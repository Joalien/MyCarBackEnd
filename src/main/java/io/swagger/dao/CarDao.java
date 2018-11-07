package io.swagger.dao;

import io.swagger.model.Car;
import io.swagger.model.Requirements;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.jdbc.datasource.DriverManagerDataSource;

import javax.sql.DataSource;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.*;

public class CarDao {
    private static final String DRIVER = "com.mysql.jdbc.Driver";
    private static final String JDBC_URL = "jdbc:mysql://localhost/mycar";
    private static final String USERNAME = "josquin";
    private static final String PASSWORD = "@SQLpassword123";

    private static final String BASE_REQUEST = "SELECT * FROM mycar.possibilite_selection WHERE TRUE";
    private static final String BASE_COUNT = "SELECT COUNT(*) FROM mycar.possibilite_selection WHERE TRUE";

    public static void main(String[] args){
//        System.out.println(countCar());
//        System.out.println(getAllCars());
        HashMap<String, Object[]> hm = new HashMap<>();
        hm.put("marque", null);
        //hm.put("origine", new String[]{"France", "Europe", "Japon"});
        //hm.put("categorie", new String[]{"Berline", "Citadine"});
        Requirements c = new Requirements(hm);
        System.out.println(getRemainingCarsForAttribute("categorie", c));

    }

    public static HashMap<String, Integer> getRemainingCarsForAttribute(String attribute, Requirements requirements){
        StringBuilder sqlRequest = new StringBuilder("SELECT ")
                .append(attribute)
                .append(", count(1) as CountModalite FROM mycar.possibilite_selection WHERE TRUE");
        sqlRequest = appendWhere(sqlRequest, requirements);
        sqlRequest.deleteCharAt(sqlRequest.length()-1).append(" GROUP BY ")
                .append(attribute)
                .append(" HAVING TRUE;");
        JdbcTemplate vJdbcTemplate = new JdbcTemplate(getDataSource());
        System.out.println(sqlRequest.toString());
        //TODO : cast list to hashmap
        HashMap<String, Integer> hm = new HashMap<>();
        for (Map<String, Object> map :  vJdbcTemplate.queryForList(sqlRequest.toString())) {
            String key = map.entrySet().toArray()[0].toString();
            key = key.substring(key.indexOf('=')+1);
            String value = map.entrySet().toArray()[1].toString();
            value = value.substring(value.indexOf('=')+1);
            hm.put(key, Integer.parseInt(value));
        }
        return hm;
    }

    public static int countCarsWithAttributes(Requirements requirements) {
        StringBuilder sqlRequest = new StringBuilder(BASE_COUNT);
        sqlRequest = appendWhere(sqlRequest, requirements);

        JdbcTemplate vJdbcTemplate = new JdbcTemplate(getDataSource());

        return vJdbcTemplate.queryForObject(String.valueOf(sqlRequest), Integer.class);
    }

    public static List<Car> getCarsWithAttributes(Requirements requirements){

        StringBuilder sqlRequest = new StringBuilder(BASE_REQUEST);
        sqlRequest = appendWhere(sqlRequest, requirements);

        JdbcTemplate vJdbcTemplate = new JdbcTemplate(getDataSource());

        return vJdbcTemplate.query(sqlRequest.toString(), getRowMapper());
    }

    /* PRIVATE FUNCTIONS */

    private static StringBuilder appendWhere(StringBuilder sqlRequest, Requirements requirements){
        for (Map.Entry<String, Object[]> entry : requirements.getCriteres().entrySet()) {
            if(null != entry.getValue() && entry.getValue().length>0) {// Cas particuliers non gérés (prix, pays/zone ...
                switch (entry.getKey()) {
                    case "prix":
                        sqlRequest.append(" AND ").append(entry.getKey()).append(" BETWEEN ").append(entry.getValue()[0]).append(" AND ").append(entry.getValue()[1]);
                        break;
                    case "origine":
                        sqlRequest.append(" AND (pays IN (");
                        for (Object o : entry.getValue()) {
                            sqlRequest.append("'").append(o.toString()).append("',");
                        }
                        sqlRequest.deleteCharAt(sqlRequest.length() - 1).append(") OR zone IN (");
                        for (Object o : entry.getValue()) {
                            sqlRequest.append("'").append(o.toString()).append("',");
                        }
                        sqlRequest.deleteCharAt(sqlRequest.length() - 1).append("))");

                        break;
                    default:
                        sqlRequest.append(" AND ").append(entry.getKey()).append(" IN (");
                        for (Object o : entry.getValue()) {
                            sqlRequest.append("'").append(o.toString()).append("',");
                        }
                        sqlRequest.deleteCharAt(sqlRequest.length() - 1).append(")");
                        break;
                }
            }

        }
        sqlRequest.append(";");
        return sqlRequest;
    }

    private static RowMapper<Car> getRowMapper(){
        return new RowMapper<Car>() {
            public Car mapRow(ResultSet pRS, int pRowNum) throws SQLException {
                Car v = new Car();
                for (Method m : Car.class.getDeclaredMethods()) {
                    if (m.getName().startsWith("set")) {
                        String param = m.getName().substring(3).toLowerCase();
                        try {
                            if(m.getGenericParameterTypes()[0]== String.class) m.invoke(v, pRS.getString(param));
                            if(m.getGenericParameterTypes()[0]== int.class) m.invoke(v, pRS.getInt(param));
                        } catch (IllegalAccessException | InvocationTargetException e) {
                            System.err.println(e.getMessage());
                            e.printStackTrace();
                        }
                    }
                }
                return v;
            }
        };
    }

    private static DataSource getDataSource(){
        DriverManagerDataSource dataSource = new DriverManagerDataSource();
        dataSource.setDriverClassName(DRIVER);
        dataSource.setUrl(JDBC_URL);
        dataSource.setUsername(USERNAME);
        dataSource.setPassword(PASSWORD);
        return dataSource;
    }
}
