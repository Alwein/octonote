import * as adminSource from 'firebase-admin';
import * as functionsSource from 'firebase-functions';
// DEV
// import serviceAccountSource = require('../dev-service-account.json');
// STAGING
import serviceAccountSource = require('../service-account.json');

export const serviceAccount = serviceAccountSource;
export const projectId = serviceAccount.project_id;
export const databaseURL =
    'https://' + projectId + '.firebaseio.com';
adminSource.initializeApp({
    credential: adminSource.credential.cert({
        clientEmail: serviceAccountSource.client_email,
        privateKey: serviceAccountSource.private_key,
        projectId: projectId,
    }),
    databaseURL,
});

export const db = adminSource.firestore();
db.settings({ ignoreUndefinedProperties: true });
export const functions = functionsSource;
export const functionsLocalized = functionsSource.region('europe-west1');
export const admin = adminSource;
