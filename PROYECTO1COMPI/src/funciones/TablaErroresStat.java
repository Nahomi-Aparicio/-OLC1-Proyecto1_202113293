/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package funciones;

import java.io.FileWriter;
import java.io.IOException;
import java.util.LinkedList;
import javax.swing.JOptionPane;

/**
 *
 * @author genes
 */
public class TablaErroresStat {
    public static  int a=0;
    public static void generateHTMLFromTokenERRSTAT (LinkedList<ErroresStat> tokensListerrorstat) {
        String htmlContent =  "<html>\n" +
                "<head>\n" +
                "<title>Lista de Tokens statpy</title>\n" +
                "<style>\n" +
                "   table {\n" +
                "       width: 80%;\n" +
                "       margin: 0 auto;\n" +
                "       border-collapse: collapse;\n" +
                "   }\n" +
                "   th, td {\n" +
                "       padding: 8px;\n" +
                "       text-align: center;\n" +
                "   }\n" +
                "   th {\n" +
                "       background-color: #007bff;\n" + // Cambia el color de fondo del encabezado de la tabla
                "       color: #fff;\n" + // Cambia el color del texto del encabezado de la tabla
                "   }\n" +
                "   tr:nth-child(even) {\n" +
                "       background-color: #f2f2f2;\n" + // Cambia el color de fondo de filas pares
                "   }\n" +
                "   /* Agrega más estilos si es necesario */\n" +
                "</style>\n" +
                "</head>\n" +
                "<body>\n" +
                             "<div style=\"text-align:center;\">\n"+
                             "<table border=\"1\" style=\"margin: 0 auto;\">\n" +
                             "<tr align=\"center\"><th>LEXEMA</th>\n" +
                             "<th align=\"center\">TOKEN</th>\n" +
                             "<th align=\"center\">LINEA</th>\n" +
                             "<th align=\"center\">COLUMNA</th></tr>";

        for (ErroresStat token : tokensListerrorstat) {
            htmlContent += "<tr >\n" +
                           "<td align=\"center\">" + token.getLEX() + "</td>\n" +
                           "<td align=\"center\">" + token.getToken() + "</td>\n" +
                           "<td align=\"center\">" + token.getLinea() + "</td>\n" +
                           "<td align=\"center\">" + token.getcolum() + "</td>\n" +
                           "</tr>";
        }

        htmlContent += "</table>\n" +
                        "</div>\n"+
                       "</body>\n" +
                       "</html>";
        
        //System.out.println(htmlContent);
        String archivoname = "Reportes\\TabladeErroresSTAT"+a+".html";        
        a++;
               
        
        
        
    
     try {
      FileWriter myWriter = new FileWriter(archivoname);
      myWriter.write(htmlContent);
      myWriter.close();
      JOptionPane.showMessageDialog(null,"se creo el reporte de errores STAT");
    } 
    catch (IOException e) {
      JOptionPane.showMessageDialog(null,"Ocurrio un erroral generar reporte JSON");
      e.printStackTrace();
    }
     
     htmlContent="";
     
  }
}