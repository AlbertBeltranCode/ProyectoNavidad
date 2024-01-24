package proyectoreciclaje.recicle.dao;
//Aqui hemos creado la clase RecicleDao, donde realizamos la conexion a la base de datos y realizamos la consulta sql
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import proyectoreciclaje.recicle.model.Recicle;

public class RecicleDao {

	public int registerRecicle(Recicle recicle) throws ClassNotFoundException
	{
		String INSERT_RECICLE_SQL = "INSERT INTO recicled"
				+ "(recicle, date, location) values "
				+ "(?, ?, ?);";
		
		int result = 0;
		
		Class.forName("com.mysql.jdbc.Driver");
		
		
		try(
				Connection connection = DriverManager.
				getConnection("jdbc:mysql://localhost:3306/reciclaje", "admin", "admin");
				
				PreparedStatement preparedStatement = connection.prepareStatement(INSERT_RECICLE_SQL);
			)
		{
			preparedStatement.setString(1, recicle.getRecicle());
			preparedStatement.setString(2, recicle.getDate());
			preparedStatement.setString(3, recicle.getLocation());
			
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
