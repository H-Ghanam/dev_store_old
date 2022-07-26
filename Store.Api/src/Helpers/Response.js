const Results = {
    startApp : [
        "",
        "version",
        "",
        "options",
        "activeUsers"
    ],
    login: [
        "currentUser",
        "stores",
        "banks",
        "salesman",
        "activeUsers",
        "stores",
        "invoiceLimit",
        "reports"
    ]
}




const mapResults = (fileName) => {
    return Results[fileName];
}


module.exports = {
    mapResults,
}