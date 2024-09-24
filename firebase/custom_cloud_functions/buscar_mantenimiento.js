const functions = require("firebase-functions");
const admin = require("firebase-admin");
admin.initializeApp();

exports.buscarMantenimiento = functions.pubsub
  .schedule("every 24 hours")
  .onRun(async (context) => {
    const db = admin.firestore();
    const generadoresSnapshot = await db.collection("generadores").get();

    generadoresSnapshot.forEach(async (doc) => {
      const generador = doc.data();
      const horas_actuales = generador.horas_actuales;

      if (horas_actuales >= 130) {
        const tareasSnapshot = await db
          .collection("tareas")
          .where("generadorID", "==", generador.generadorID)
          .where("estado", "==", "pendiente")
          .get();

        if (tareasSnapshot.empty) {
          await db.collection("tareas").add({
            descripcion:
              "Cambio de aceite, filtro de aceite y filtro de combustible",
            estado: "pendiente",
            fechaAsignacion: admin.firestore.FieldValue.serverTimestamp(),
            fechaFinalizacion: null, // Esta fecha se actualizará cuando la tarea esté completa
            generadorID: generador.generadorID,
            name: "Mantenimiento preventivo",
            tipo: "Tipo1",
          });
        }
      }
    });

    return null;
  });
