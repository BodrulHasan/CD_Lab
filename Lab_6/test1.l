%{
#include <stdio.h>
int i;
%}

%%


{
    int zero = 0, one = 0;

    for(i = 0; yytext[i] != '\0'; i++)
    {
        if(yytext[i] == '0')
            zero++;
        else


            one++;
    }


    if (zero  % 2 == 1 && one % 2 == 0)
        printf("accepted\n");
    else
        printf("regected\n");
}

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