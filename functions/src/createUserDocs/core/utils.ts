
export function defineUserName(email: string, uid: string): string {
    if (email == "") {
        return "#" + uid;
    }
    const firstEmailPart = email.split("@")[0];
    const userName = firstEmailPart.substring(0, 30);
    return userName;
}

export function defineName(email: string): string {
    if (email == null || email == "") {
        return "";
    }
    const firstEmailPart = email.split("@")[0].substring(0, 100);
    const elementsInName = firstEmailPart.split(".");
    const nameList: string[] = [];
    for (const element of elementsInName) {
        nameList.push(element[0].toUpperCase() + element.slice(1).toLowerCase());
    }
    return nameList.join(" ");
}

export function defineSearchCases(userName: string, name: string): string[] {
    const cleanUserName = userName.split('#')[0];
    const userNameCases = cleanUserName.replace('.', "_").replace('__', "_").split(
        "_");
    const nameCases = name.toLowerCase()
        .replace('.', "_")
        .replace('__', "_")
        .replace(' ', "_")
        .replace(/\W/g, '')
        .split("_");

    const allCases = userNameCases.concat(nameCases);

    const userSearchCasesList: string[] = [];
    for (const element of allCases) {
        let value = '';
        for (const char of element) {
            value += char;
            userSearchCasesList.push(value);
        }
    }

    return Array.from(new Set(userSearchCasesList));
}
