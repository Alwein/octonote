import { CreateUserDocsRepositoryFirestoreImpl } from "../../../data/createUserDocsRepositoryFirestore";
import { User } from "../../../domain/models/user";
import { UserAccount } from "../../../domain/models/userAccount";
import { CreateUserDocsRepository } from "../../../domain/repositories/createUserDocsRepository";
import { SetDocsUsecase } from "../../../domain/usecases/setDocsUsecase";

describe('SetDocsUsecase', () => {
    test('should success when repository succeed', async () => {
        const testUser: User = {
            userId: "testId",
            profilePhoto: "testProfilePhoto",
            userName: "testuserName",
            name: "testName",
            state: 0,
            searchCases: [],
        };
        const testuserAccount: UserAccount = {
            email: "testEmail",
            dateOfBirth: "testDOB",
            dateOfInscription: "testDOI",
            location: "testLocation",
            phoneNumber: "testPhoneNumber",
        };

        const createUserDocsRepository: CreateUserDocsRepository = new CreateUserDocsRepositoryFirestoreImpl;
        const mocked = jest.spyOn(createUserDocsRepository, 'setDocs').mockResolvedValue(true);

        const usecase = new SetDocsUsecase(createUserDocsRepository);
        const result = await usecase.call(testUser, testuserAccount);
        expect(result).toBe(true);
        mocked.mockRestore();
    });
});
