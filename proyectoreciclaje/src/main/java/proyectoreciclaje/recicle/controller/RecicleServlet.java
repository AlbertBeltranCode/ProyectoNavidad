package proyectoreciclaje.recicle.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import proyectoreciclaje.recicle.dao.RecicleDao;
import proyectoreciclaje.recicle.model.Recicle;

/**
 * Servlet implementation class RecicleServlet
 */
@WebServlet("/recicle")
public class RecicleServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	//Aqui importamos el RecicleDao   
	private RecicleDao recicleDao = new RecicleDao();
    
    public RecicleServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

    //Aqui creamos el doGet para que cargue el recicle.jsp
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
				response.getWriter().append("Served at: ").append(request.getContextPath());
				
				RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/views/recicle.jsp");
				dispatcher.forward(request, response);
	}

	//Aqui creamos el doGet para que puedas introducir los valores de reciclaje y entonces una vez enviados a la base de datos cargue el recicledetails.jsp
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String recicle = request.getParameter("recicle");
		String date = request.getParameter("date");
		String location = request.getParameter("location");
		
		Recicle Imrecicle = new Recicle();
		Imrecicle.setRecicle(recicle);
		Imrecicle.setDate(date);
		Imrecicle.setLocation(location);
		
		try {
			recicleDao.registerRecicle(Imrecicle);
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/views/recicledetails.jsp");
		dispatcher.forward(request, response);
		
	}

}
