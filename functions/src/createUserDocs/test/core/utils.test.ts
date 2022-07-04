import { defineName, defineSearchCases, defineUserName } from "../../core/utils";


describe('defineUserName', () => {
    test('should return a valid username when email is provided', async () => {
        const result = defineUserName("adrien.cens@octo.com", "testId");
        expect(result).toBe("adrien.cens");
    });
    test('should return a valid username when email is empty', async () => {
        const result = defineUserName("", "testId");
        expect(result).toBe("#testId");
    });
});

describe('defineName', () => {
    test('should return a valid name when email is provided', async () => {
        const result = defineName("adrien.cens@octo.com");
        expect(result).toBe("Adrien Cens");
    });
    test('should return a valid name when email is empty', async () => {
        const result = defineName("");
        expect(result).toBe("");
    });
});

describe('defineSearchCases', () => {
    test('should return valid searchCases', async () => {
        const result = defineSearchCases("adrien.cens", "test");
        expect(result).toStrictEqual(["a", "ad", "adr", "adri", "adrie", "adrien", "c", "ce", "cen", "cens", "t", "te", "tes", "test"]);
    });

    test('should return valid searchCases with no duplication when userName and name are symilar', async () => {
        const result = defineSearchCases("adrien.cens", "Adrien Cens");
        expect(result).toStrictEqual(["a", "ad", "adr", "adri", "adrie", "adrien", "c", "ce", "cen", "cens"]);
    });

    test('should return valid searchCases when email is empty', async () => {
        const result = defineSearchCases("", "");
        expect(result).toStrictEqual([]);
    });
});
