To comple:
flex zoomjoystrong.lex
bison -d zoomjoystrong.y
gcc -o zjs zoomjoystrong.c lex.yy.c zoomjoystrong.tab.c -lSDL2 -lm
