/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Model;

/**
 *
 * @author Carlos Eduardo
 */
public class Roupa {
    private int id;
    private String nomeroupa;
    private double valorroupa;
    private String marcaroupa;
    
    public Roupa(){
        
    }

    public Roupa(int id, String nomeroupa, double valorroupa, String marcaroupa) {
        this.id = id;
        this.nomeroupa = nomeroupa;
        this.valorroupa = valorroupa;
        this.marcaroupa = marcaroupa;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getNomeroupa() {
        return nomeroupa;
    }

    public void setNomeroupa(String nomeroupa) {
        this.nomeroupa = nomeroupa;
    }

    public double getValorroupa() {
        return valorroupa;
    }

    public void setValorroupa(double valorroupa) {
        this.valorroupa = valorroupa;
    }

    public String getMarcaroupa() {
        return marcaroupa;
    }

    public void setMarcaroupa(String marcaroupa) {
        this.marcaroupa = marcaroupa;
    }
    
}
