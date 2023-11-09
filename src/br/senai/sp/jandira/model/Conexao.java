package br.senai.sp.jandira.model;

import java.sql.Connection;
import java.sql.DriverManager;

public class Conexao {

    private String user, password, banco, servidor;

    public Connection conexao;

    //construtor
    public Conexao (){
        this.servidor = "localhost";
        this.banco = "db_senai_java";
        this.user = "root";
        this.password = "bcd127";
    }

    public boolean conectDrive(){
        try{
            this.conexao = DriverManager.getConnection("jdbc:mysql://" + this.servidor + "/" + this.banco, this.user, this.password);
            return true;
        } catch (Exception erro){
            System.out.println(erro);
            return false;
        }
    }

    public Connection getConnection(){
        conectDrive();
        return conexao;
    }
}
