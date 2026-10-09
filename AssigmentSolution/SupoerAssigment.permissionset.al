namespace Assigment;

permissionset 60101 BasicAssigment
{
    Assignable = true;
    Permissions = tabledata Assigments = RIMD,
        table Assigments = X,
        report "Assigments Reports" = X,
        codeunit "Assigment Subscribers" = X,
        page "Assigment Card" = X,
        page "Assigment FactBox" = X,
        page "Assigment List" = X,

        page "Assignment RC" = X,
        query CustomerToSalesLine = X,
        tabledata "Assigment Setup" = RIMD,

        page "Assigment Wizard" = X;
}