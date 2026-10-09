namespace Assigment;

permissionset 60102 APIAssigment
{
    Assignable = true;
    Permissions = tabledata Assigments = RIMD,
        table Assigments = X,
        report "Assigments Reports" = X,
        codeunit "Assigment Subscribers" = X,


        page "Assignment RC" = X,
        query CustomerToSalesLine = X;



}