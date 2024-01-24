package proyectoreciclaje.post.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import proyectoreciclaje.post.dao.PostDao;
import proyectoreciclaje.post.model.Post;

/**
 * Servlet implementation class PostServlet
 */
@WebServlet("/insertpost")
public class PostServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	//Aqui importamos el PostDao
	private PostDao postDao = new PostDao();
    /**
     * @see HttpServlet#HttpServlet()
     */
    public PostServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

    //Aqui creamos el doGet para que cargue el insertpost.jsp
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/views/insertpost.jsp");
		dispatcher.forward(request, response);
	}

	//Aqui creamos el doGet para que puedas introducir los valores para el post y entonces una vez enviados a la base de datos cargue el totalrecicled.jsp
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String title = request.getParameter("title");
		String context = request.getParameter("context");
		String date = request.getParameter("date");
		
		Post post = new Post();
		post.setTitle(title);
		post.setContext(context);
		post.setDate(date);
		
		try {
			postDao.registerPosts(post);
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/views/totalrecicled.jsp");
		dispatcher.forward(request, response);
	}

}