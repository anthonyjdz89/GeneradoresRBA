const admin = require("firebase-admin/app");
admin.initializeApp();

const buscarMantenimiento = require("./buscar_mantenimiento.js");
exports.buscarMantenimiento = buscarMantenimiento.buscarMantenimiento;
