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

%init{ 
    yyline = 1;
    yycolumn =1;
%init}  

// ------> Expresiones Regulares 

doubles = [0-9]+"."[0-9]+
string = \" ([^\"] | "\\\"")+ \"
//----> COMENTARIOS
COMENT_S = "//" .*
COMENT_M = "/*"([^*]|("*"+[^*/]))*"*/"


// ------------  Código Java -------------------

%%
// ------------  Reglas Lexicas -------------------


//---------------------> simbolos
"{"       {funciones.info.listaTokensJSon.add(new funciones.TokensJson(yytext(),"LLAVE_AA",yyline,yycolumn));
            return new Symbol(sym.LLAVE_AA, yycolumn, yyline, yytext());}

"}"       {funciones.info.listaTokensJSon.add(new funciones.TokensJson(yytext(),"LLAVE_CC",yyline,yycolumn));
            return new Symbol(sym.LLAVE_CC, yycolumn, yyline, yytext());}

":"       {funciones.info.listaTokensJSon.add(new funciones.TokensJson(yytext(),"DOSP",yyline,yycolumn));
            return new Symbol(sym.DOSP, yycolumn, yyline, yytext());}


","       {funciones.info.listaTokensJSon.add(new funciones.TokensJson(yytext(),"COMA",yyline,yycolumn));
            return new Symbol(sym.COMA, yycolumn, yyline, yytext());}

// ------> Expresiones Regulares 
{doubles}  { funciones.info.listaTokensJSon.add(new funciones.TokensJson(yytext(),"DOUBLE",yyline,yycolumn));
            return new Symbol(sym.DOUBLE, yycolumn, yyline, yytext()); }

{string}  {  funciones.info.listaTokensJSon.add(new funciones.TokensJson(yytext(),"STRING",yyline,yycolumn));
            return new Symbol(sym.STRING, yycolumn, yyline, yytext()); }



//------> Ingorados 
[ \t\r\n\f]     {/* Espacios en blanco se ignoran */}
{COMENT_S}    {}
{COMENT_M}    {}


//------> Errores Léxicos 
.           	{ System.out.println("Error Lexico: " + yytext() + " | Fila:" + yyline + " | Columna: " + yycolumn); 
funciones.info.ListaErroresJSon.add(new funciones.ErrorJson(yytext(),"error lexico",yyline,yycolumn));

   
}