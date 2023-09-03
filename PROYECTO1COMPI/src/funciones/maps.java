/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package funciones;
import java.util.HashMap;
import java.util.LinkedList;
import javax.swing.JOptionPane;


/**
 *
 * @author genes
 */
public class maps {
   public static  HashMap<String, Object> Globales_tabla = new HashMap<>();
   
  public static HashMap<String, Object> variables_Json = new HashMap<>();
  
  public static HashMap<String, Object> Archivos_Json = new HashMap<>();
    //--> funciones.funcion.ListaT.add(new Tokens(yytext() ,"punto_coma" ,yyline ,yycolumn)); PARA LA TABLA DE TOKENS 


    public static void mostrar (){
           for (String i : funciones.maps.variables_Json.keySet()) {
                System.out.println("key: " + i + " value: " + funciones.maps.variables_Json.get(i));
              }
    }
    
       
    public static void variable(String nombreArchivo) {
    HashMap<String, Object> copiaVariablesJson = new HashMap<>(funciones.maps.variables_Json);

    if (funciones.maps.Archivos_Json.containsKey(nombreArchivo)) {
        System.out.println("key: ya existe");
    } else {
        System.out.println("key: no existe");
        funciones.maps.Archivos_Json.put(nombreArchivo, copiaVariablesJson);
    }

}
    
    
    
    
    
    
    
    
    
    
}
