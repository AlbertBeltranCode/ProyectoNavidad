package proyectoreciclaje.post.dao;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import proyectoreciclaje.post.model.Post;
//Aqui hemos creado la clase PostDao, donde realizamos la conexion a la base de datos y realizamos la consulta sql
public class PostDao {

	
	public int registerPosts(Post post) throws ClassNotFoundException
	{
		String INSERT_POSTS_SQL = "INSERT INTO posts"
				+ "(title, context, date) values "
				+ "(?, ?, ?);";
		
		int result = 0;
		
		Class.forName("com.mysql.jdbc.Driver");
		
		
		try(
				Connection connection = DriverManager.
				getConnection("jdbc:mysql://localhost:3306/reciclaje", "admin", "admin");
				
				PreparedStatement preparedStatement = connection.prepareStatement(INSERT_POSTS_SQL);
			)
		{
			preparedStatement.setString(1, post.getTitle());
			preparedStatement.setString(2, post.getContext());
			preparedStatement.setString(3, post.getDate());
			
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
