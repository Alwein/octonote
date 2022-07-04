import { User } from "../models/user";
import { UserAccount } from "../models/userAccount";
import { CreateUserDocsRepository } from "../repositories/createUserDocsRepository";

export class SetDocsUsecase {
    constructor(private createUserDocsRepository: CreateUserDocsRepository) { }

    public async call(user: User, userAccount: UserAccount): Promise<boolean> {
        return await this.createUserDocsRepository.setDocs(user, userAccount);
    }
}
