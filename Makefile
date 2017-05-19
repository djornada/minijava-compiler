SDIR = ./src
ODIR = ./out
BINDIR = ./bin

JFLEX  = java -jar $(BINDIR)/JFlex.jar 
JAVAC  = javac
BYACCJ   = $(BINDIR)/yacc.linux -tv -J 


all: lex

parser: $(SDIR)/lexer.flex $(ODIR)/Yylex.java
	$(BYACCJ) $(SDIR)/parser.y

lexer: $(SDIR)/lexer.flex
	$(JFLEX) -d $(ODIR) $(SDIR)/lexer.flex

clean:
	rm -f $(ODIR)/*

