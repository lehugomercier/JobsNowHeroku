package JobsNow.dao.impl;

import com.mysql.jdbc.jdbc2.optional.MysqlDataSource;

import javax.sql.DataSource;

public class DataSourceProvider {

    private static MysqlDataSource dataSource;

    public static DataSource getDataSource(){
        if (dataSource == null) {
            dataSource = new MysqlDataSource();
            dataSource.setServerName("dz8959rne9lumkkw.chr7pe7iynqr.eu-west-1.rds.amazonaws.com");
            dataSource.setPort(3306);
            dataSource.setDatabaseName("kzfwae1flv4gusqa");
            dataSource.setUser("su5e41wt61642u3q");
            dataSource.setPassword("xx75exhkl0p5v1ya");
        }
        return dataSource;
    }
}
