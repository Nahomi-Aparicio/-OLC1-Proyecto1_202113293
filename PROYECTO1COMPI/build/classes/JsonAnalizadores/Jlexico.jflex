// ------------  Paquete e importaciones ------------
package JsonAnalizadores; 

import java_cup.runtime.*;

%%	
//-------> Directivas (No tocar)

%public 
%class Lexer
%cup
%char
%column
%line
%unicode
%ignorecase

%{ 
%} 

// ------> Expresiones Regulares 

doubles = [0-9]+"."[0-9]+
IDENTIFICADOR = [a-zA-Z][a-zA-Z0-9]+([a-zA-Z][a-zA-Z0-9]+" ")*

string = "\"" {IDENTIFICADOR}+ "\""




// ------------  Código Java -------------------

%%
// ------------  Reglas Lexicas -------------------


//---------------------> simbolos
"{"       {return new Symbol(sym.LLAVE_AA, yycolumn, yyline, yytext());}
"}"       {return new Symbol(sym.LLAVE_CC, yycolumn, yyline, yytext());}
":"       {return new Symbol(sym.DOSP, yycolumn, yyline, yytext());}
","       {return new Symbol(sym.COMA, yycolumn, yyline, yytext());}

// ------> Expresiones Regulares 
{doubles}  { return new Symbol(sym.DOUBLE, yycolumn, yyline, yytext()); }
{string}  {System.out.println(yytext()); return new Symbol(sym.STRING, yycolumn, yyline, yytext()); }



//------> Ingorados 
[ \t\r\n\f]     {/* Espacios en blanco se ignoran */}

//------> Errores Léxicos 
.           	{ System.out.println("Error Lexico: " + yytext() + " | Fila:" + yyline + " | Columna: " + yycolumn); }
