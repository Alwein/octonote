import functions from "firebase-functions-test";
import { databaseURL, projectId } from "../../firebase";
import { UserCollectionNames } from "../domain/models/user";
import { getFirestoreDoc } from "./testutils/testUtils";

const projectConfig = { databaseURL, projectId };
const testEnv = functions(projectConfig);

// should be after testEnv
import { createUserDocs } from "../index";

describe('triggerAlbumBufferUpdates', () => {
    const wrapped = testEnv.wrap(createUserDocs);
    test('should update albumBuffer dateOfSubmission', async () => {
        const userRecord = testEnv.auth.exampleUserRecord();

        await wrapped(userRecord);
        const refPath = UserCollectionNames.USERS + "/" + userRecord.uid;
        const result = await getFirestoreDoc(refPath);

        expect(result.exists)
            .toBe(true);
    });
});
