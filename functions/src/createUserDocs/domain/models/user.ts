// Run bellow command to generate the schema validator and replace it into AlbumBufferSchemaValidator.ts
// note: YOU SHOULD BE IN FUNCTIONS DIRECTORY
// npx typescript-json-schema ./src/createUserDocs/domain/models/user.ts User --required  --out ./src/createUserDocs/domain/models/userSchemaValidator.json


export class UserCollectionNames {
    public static readonly USERS = "users";
}

export interface User {
    userId: string,
    profilePhoto?: string | null,
    userName?: string | null,
    name?: string | null,
    state?: number | null,
    searchCases?: string[] | null,
}
