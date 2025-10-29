To comple:\n
flex zoomjoystrong.lex\n
bison -d zoomjoystrong.y\n
gcc -o zjs zoomjoystrong.c lex.yy.c zoomjoystrong.tab.c -lSDL2 -lm
