import { CreateUserDocsRepositoryFirestoreImpl } from "../../data/createUserDocsRepositoryFirestore";
import { User } from "../../domain/models/user";
import { UserAccount } from "../../domain/models/userAccount";
import { CreateUserDocsRepository } from "../../domain/repositories/createUserDocsRepository";


describe('CreateUserDocsRepositoryFirestoreImpl', () => {
    describe('setDocs', () => {
        test('should add the given User and UserAccount to firestore', async () => {
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
            const createUserDocsRepository: CreateUserDocsRepository = new CreateUserDocsRepositoryFirestoreImpl();
            const result = await createUserDocsRepository.setDocs(testUser, testuserAccount);
            expect(result).toBe(true);
        });
    });
});
