/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Graficas;
import java.io.*;
import org.jfree.data.category.DefaultCategoryDataset;
import java.util.ArrayList;
import org.jfree.chart.ChartFactory;
import org.jfree.chart.ChartUtilities;
import org.jfree.chart.JFreeChart;
import org.jfree.chart.plot.PlotOrientation;
/**
 *
 * @author Pc
 */
public class GraficarBarras {
        public void Graficar(String titulo,String titulox,String tituloy,ArrayList<String> ValuesX,ArrayList<Double> Values) throws IOException{
             System.out.println(titulo);
            System.out.println(titulo);
            System.out.println(titulox);
            System.out.println(tituloy);
            for (String valor : ValuesX) {
                System.out.println(valor);
            }
            for (double val : Values) {
                System.out.println(val);
            }
             final DefaultCategoryDataset dataset = new DefaultCategoryDataset( );
       
                    for (int i = 0; i < ValuesX.size(); i++) {
                        dataset.addValue( Values.get(i) , ValuesX.get(i) , ValuesX.get(i));
                       
                    }
                    JFreeChart barChart = ChartFactory.createBarChart(
                        titulo, 
                        titulox, tituloy, 
                        dataset,PlotOrientation.VERTICAL, 
                        true, true, false);
                    
                    int width = 640;    /* Width of the image */
                    int height = 480;   /* Height of the image */ 
                    File BarChart = new File( "GRAFICADE_BARRAS.jpeg" ); 
                    ChartUtilities.saveChartAsJPEG( BarChart , barChart , width , height );
                }
}