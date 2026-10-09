namespace Assigment;

permissionset 60100 SupoerAssigment
{
    Assignable = true;
    Permissions = tabledata Assigments = RIMD,
        table Assigments = X,
        report "Assigments Reports" = X,
        codeunit "Assigment Subscribers" = X,
        page "Assigment Card" = X,
        page "Assigment FactBox" = X,
        page "Assigment List" = X,
        page AssigmentAPI = X,
        page "Assignment RC" = X,
        query CustomerToSalesLine = X,
        tabledata "Assigment Setup" = RIMD,
        table "Assigment Setup" = X,
        page "Assigment Setup" = X,
        page "Assigment Wizard" = X;
}