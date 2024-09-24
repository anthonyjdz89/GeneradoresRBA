const functions = require("firebase-functions");
const admin = require("firebase-admin");
admin.initializeApp();

exports.onUserDeleted = functions
  .region("us-east1")
  .auth.user()
  .onDelete(async (user) => {
    let firestore = admin.firestore();
    let userRef = firestore.doc("usuarios/" + user.uid);
  });
const OneSignal = require("@onesignal/node-onesignal");

const kUserKey = "YTBmOTdkZWYtNmU0Yy00OTQwLWIxNWMtNjk1N2NmZDUzYmY2";
const kAPIKey = "N2ZkZjljODYtMzUwNC00MTdmLWE1OTYtMzU3MDgzODNjZTIw";

const configuration = OneSignal.createConfiguration({
  userKey: kUserKey,
  appKey: kAPIKey,
});
const client = new OneSignal.DefaultApi(configuration);
const user = new OneSignal.User();

exports.addUser = functions
  .region("us-east1")
  .https.onCall(async (data, context) => {
    if (context.auth.uid != data.user_id) {
      return "Unauthenticated calls are not allowed.";
    }
    try {
      user.identity = {
        external_id: data.user_id,
      };
      user.properties = {
        tags: data.tags,
      };
      user.subscriptions = data.subscriptions;
      const createdUser = await client.createUser(
        "5e19e7f1-f7ce-434e-bf66-40fe851084a9",
        user,
      );
      if (createdUser.identity["onesignal_id"] == null) {
        throw new functions.https.HttpsError(
          "aborted",
          "Could not create OneSignal user",
        );
      }
      return createdUser;
    } catch (err) {
      console.error(
        `Unable to create user ${context.auth.uid}.
            Error ${err}`,
      );
      throw new functions.https.HttpsError(
        "aborted",
        "Could not create OneSignal user",
      );
    }
  });

exports.deleteUser = functions
  .region("us-east1")
  .https.onCall(async (data, context) => {
    if (context.auth.uid != data.user_id) {
      return "Unauthenticated calls are not allowed.";
    }
    try {
      await client.deleteUser(
        "5e19e7f1-f7ce-434e-bf66-40fe851084a9",
        "external_id",
        data.user_id,
      );
      return "User deleted";
    } catch (err) {
      console.error(
        `Unable to delete user ${context.auth.uid}.
            Error ${err}`,
      );
      throw new functions.https.HttpsError(
        "aborted",
        "Could not delete OneSignal user",
      );
    }
  });
