import { db } from "../../../firebase";
import { UserCollectionNames } from "../../domain/models/user";

export async function addTestUserToFirestore(userId: string) {
    await db
        .doc(UserCollectionNames.USERS + "/" + userId)
        .set({
            userId: userId,
            name: userId,
            userName: userId,
        });
}

export async function getFirestoreDoc(refPath: string) {
    return await db
        .doc(refPath)
        .get();
}

export async function setFirestoreDoc(refPath: string, doc: object) {
    return await db
        .doc(refPath)
        .set(doc);
}

export function createOnCallContext(uid: string) {
    return {
        auth: {
            token: {
                access: 'testToken',
            },
            uid: uid,
        },
    };
}
