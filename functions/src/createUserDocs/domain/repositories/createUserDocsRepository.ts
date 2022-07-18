import { User } from "../models/user";
import { UserAccount } from "../models/userAccount";

export interface CreateUserDocsRepository {
    setDocs(user: User, userAccount: UserAccount): Promise<boolean>
}
