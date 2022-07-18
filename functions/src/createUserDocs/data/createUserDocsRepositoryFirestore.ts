import { db } from "../../firebase";
import { User, UserCollectionNames } from "../domain/models/user";
import { UserAccount, UserAccountCollectionNames } from "../domain/models/userAccount";
import { CreateUserDocsRepository } from "../domain/repositories/createUserDocsRepository";

export class CreateUserDocsRepositoryFirestoreImpl implements CreateUserDocsRepository {
    public async setDocs(user: User, userAccount: UserAccount): Promise<boolean> {
        try {
            const batch = db.batch();

            const usersRef = db.collection(UserCollectionNames.USERS).doc(user.userId);
            batch.set(usersRef, user);

            const accountRef = usersRef.collection(UserAccountCollectionNames.ACCOUNT).doc(user.userId);
            batch.set(accountRef, userAccount);

            await batch.commit();
            return true;
        } catch (e) {
            throw new Error(`CreateUserDocs setDocs Error. ${e}`);
        }
    }
}
