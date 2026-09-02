%{
#include <stdio.h>

int keyword = 0;
int Identifier = 0;
int assign_op = 0;
int arithmatic_op = 0;
int number = 0;
int stmt = 0;
int tabspacenewline = 0;
int relational_op = 0;
int logical_op = 0;
%}

%%

(int)|(if)|(float)|(string)|(bool)
    {keyword++; printf("keyword Match\n");}

[a-zA-Z]+[a-zA-Z0-9_]*
    {Identifier++; printf("Identifier Match\n");}

"<="|"<"|"!="|">"|"=="|">="
    {relational_op++; printf("relational_op Match\n");}

"="
    {assign_op++; printf("assign_op Match\n");}

"+"|"-"|"/"|"*"
    {arithmatic_op++; printf("arithmatic_op Match\n");}

"&&"|"||"|"!"
    {logical_op++; printf("logical_op Match\n");}

[0-9]+
    {number++; printf("number Match\n");}

[;]+
    {stmt++; printf("stmt Match\n");}

[ \t\n]+
    {tabspacenewline++; printf("space/tab/newline Match\n");}

%%

int yywrap()
{
    return 1;
}

int main()
{
    yylex();

    printf("keyword: %d\n", keyword);
    printf("Identifier: %d\n", Identifier);
    printf("assign_op: %d\n", assign_op);
    printf("arithmatic_op: %d\n", arithmatic_op);
    printf("relational_op: %d\n", relational_op);
    printf("logical_op: %d\n", logical_op);
    printf("number: %d\n", number);
    printf("stmt: %d\n", stmt);
    printf("tabspacenewline: %d\n", tabspacenewline);

    return 0;
}