// Run bellow command to generate the schema validator and replace it into AlbumBufferSchemaValidator.ts
// note: YOU SHOULD BE IN FUNCTIONS DIRECTORY
// npx typescript-json-schema ./src/createUserDocs/domain/models/userAccount.ts UserAccount --required  --out ./src/createUserDocs/domain/models/userAccountSchemaValidator.json


export class UserAccountCollectionNames {
    public static readonly ACCOUNT = "account";
}

export interface UserAccount {
    /**
     * @format "email"
     */
    email?: string | null,
    /**
     * @pattern ^(-?(?:[1-9][0-9]*)?[0-9]{4})-(1[0-2]|0[1-9])-(3[01]|0[1-9]|[12][0-9])T(2[0-3]|[01][0-9]):([0-5][0-9]):([0-5][0-9])(.[0-9]+)?(Z)?$
     */
    dateOfBirth?: string | null,
    /**
    * @pattern ^(-?(?:[1-9][0-9]*)?[0-9]{4})-(1[0-2]|0[1-9])-(3[01]|0[1-9]|[12][0-9])T(2[0-3]|[01][0-9]):([0-5][0-9]):([0-5][0-9])(.[0-9]+)?(Z)?$
    */
    dateOfInscription: string,
    location?: string | null,
    phoneNumber?: string | null,
}
