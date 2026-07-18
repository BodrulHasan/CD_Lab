%{
#include <stdio.h>


%}

%%
(int)|(if)|(float)|(string)|(boolean)  {printf("keyword");}
([a-zA-Z]+[a-zA-Z0-9_]*) {printf("Identifier");}


%%

int yywrap()
{
    return 1;
}

int main()
{
    yylex();

    
    return 0;
}