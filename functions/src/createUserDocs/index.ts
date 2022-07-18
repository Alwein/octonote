import { functionsLocalized } from "../firebase";
import { defineName, defineSearchCases, defineUserName } from "./core/utils";
import { CreateUserDocsRepositoryFirestoreImpl } from "./data/createUserDocsRepositoryFirestore";
import { User } from "./domain/models/user";
import { UserAccount } from "./domain/models/userAccount";
import { CreateUserDocsRepository } from "./domain/repositories/createUserDocsRepository";
import { SetDocsUsecase } from "./domain/usecases/setDocsUsecase";

const createUserDocsRepository: CreateUserDocsRepository = new CreateUserDocsRepositoryFirestoreImpl();
const setDocsUsecase: SetDocsUsecase = new SetDocsUsecase(createUserDocsRepository);

export const createUserDocs = functionsLocalized.auth.user().onCreate(async (userRecord) => {
    const userName: string = defineUserName(userRecord.email ?? "", userRecord.uid);
    const name: string | null = userRecord.email != undefined ? defineName(userRecord.email) : null;
    const searchCases = defineSearchCases(userName, name ?? '');

    const user: User = {
        userId: userRecord.uid,
        profilePhoto: userRecord.photoURL,
        userName: userName,
        name: name,
        state: null,
        searchCases: searchCases,
    };

    const userAccount: UserAccount = {
        email: userRecord.email,
        dateOfBirth: null,
        dateOfInscription: userRecord.metadata.creationTime,
        location: null,
        phoneNumber: null,
    };

    await setDocsUsecase.call(user, userAccount);
});
