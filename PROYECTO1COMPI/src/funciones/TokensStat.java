/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package funciones;

import java.util.LinkedList;

/**
 *
 * @author genes
 */
public class TokensStat {
   public String LEX, token;
   public int linea, colum;
   
    public TokensStat(String LEX, String token,  int linea, int colum){
        this.token = token;
        this.LEX = LEX; 
        this.linea = linea; 
        this.colum = colum;
    }
    @Override
    public String toString(){
        return   "lexema:"  + LEX  + " "
                   + "TOKEN:"   + token   + " "
                   + "LINEA:"   + linea   + " " 
                   + "COLUMNA:" + colum + " "
                ;
    }

    public String getLEX() {
        return LEX;
    }

    public String getToken() {
        return token;
    }

    public int getLinea() {
        return linea;
    }

    public int getcolum() {
        return colum;
    }
    }

    
    
    
    
    
    
    
