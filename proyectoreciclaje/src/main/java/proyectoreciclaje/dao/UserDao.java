package proyectoreciclaje.dao;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import proyectoreciclaje.model.User;
//Aqui hemos creado la clase UserDao, donde realizamos la conexion a la base de datos y realizamos la consulta sql
public class UserDao {

	
	public int registerUser(User user) throws ClassNotFoundException
	{
		String INSERT_USERS_SQL = "INSERT INTO users"
				+ "(first_name, last_name, username, password, address, contact) values "
				+ "(?, ?, ?, ?, ?, ?);";
		
		int result = 0;
		
		Class.forName("com.mysql.jdbc.Driver");
		
		
		try(
				Connection connection = DriverManager.
				getConnection("jdbc:mysql://localhost:3306/reciclaje", "admin", "admin");
				
				PreparedStatement preparedStatement = connection.prepareStatement(INSERT_USERS_SQL);
			)
		{
			preparedStatement.setString(1, user.getFirstName());
			preparedStatement.setString(2, user.getLastName());
			preparedStatement.setString(3, user.getUsername());
			preparedStatement.setString(4, user.getPassword());
			preparedStatement.setString(5, user.getAddress());
			preparedStatement.setString(6, user.getContact());
			
			System.out.println(preparedStatement);
			
			result = preparedStatement.executeUpdate();
			
		}
		catch(SQLException e)
		{
			e.printStackTrace();
		}
		return result;
	}
}
