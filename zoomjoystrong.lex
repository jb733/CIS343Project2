
%{
#include "zoomjoystrong.tab.h"   /* Contains token definitions from Bison */
#include "zoomjoystrong.h"
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
%}

/* Defines what the syntax of an integer and a float */
INT     [-]?[0-9]+
FLOAT   [-]?[0-9]+\.[0-9]+


/* Matches keywords and symbols to what they represent */
%%
"end"       { return END; }
";"         { return END_STATEMENT; }
"point"     { return POINT; }
"line"      { return LINE; }
"circle"    { return CIRCLE; }
"rectangle" { return RECTANGLE; }
"set_color" { return SET_COLOR; }
{INT}       { yylval.ival = atoi(yytext); return INT; }
{FLOAT}     { yylval.fval = atof(yytext); return FLOAT; }
\$[a-zA-Z]* { yylval.sval = strdup(yytext); return VARIABLE; }
"="         { return EQUALS; }
"+"         { return PLUS; }
"-"         { return MINUS; }
"*"         { return MULT; }
"/"         { return DIV; }
[ \t\r\n]+  ;   /* Ignore whitespace */
.           { printf("Unknown character: %s\n", yytext); }

%%

int yywrap() { return 1; }
