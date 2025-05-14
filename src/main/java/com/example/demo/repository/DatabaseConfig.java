package com.example.demo.repository;

public class DatabaseConfig {

    private String dbUrl = "jdbc:postgresql://localhost:5432/mydatabase";
    private String dbUsername = "myuser";
    private String dbPassword = "mypassword";

    public String getDbUrl() {
        return dbUrl;
    }

    public void setDbUrl(String dbUrl) {
        this.dbUrl = dbUrl;
    }

    public String getDbUsername() {
        return dbUsername;
    }

    public void setDbUsername(String dbUsername) {
        this.dbUsername = dbUsername;
    }

    public String getDbPassword() {
        return dbPassword;
    }

    public void setDbPassword(String dbPassword) {
        this.dbPassword = dbPassword;
    }

    // You can add a method here to get a database connection, for example:
    // public Connection getConnection() throws SQLException {
    //     return DriverManager.getConnection(dbUrl, dbUsername, dbPassword);
    // }
}