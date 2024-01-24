package proyectoreciclaje.login.web;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
//import javax.servlet.http.HttpSession;

import proyectoreciclaje.login.bean.LoginBean;
import proyectoreciclaje.login.database.LoginDao;

/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("/login")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	//Aqui importamos el LoginDao
    private LoginDao loginDao;   
    /**
     * @see HttpServlet#HttpServlet()
     */
    
    public void init() {
		loginDao = new LoginDao();
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
  //A continuacion creamos el doGet para que cargue el login.jsp
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/views/login.jsp");
		dispatcher.forward(request, response);
	}
  //A continuacion creamos el doPost para que mediante el usuario y la contrasena podamos hacer login y para que cargue el loginsuccess.jsp
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String username = request.getParameter("username");
		String password = request.getParameter("password");
		LoginBean loginBean = new LoginBean();
		loginBean.setUsername(username);
		loginBean.setPassword(password);

		try {
			if (loginDao.validate(loginBean)) {
				//HttpSession session = request.getSession();
				// session.setAttribute("username",username);
				RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/views/loginsuccess.jsp");
				dispatcher.forward(request, response);
			} else {
				//HttpSession session = request.getSession();
				//session.setAttribute("user", username);
				RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/views/login.jsp");
				dispatcher.forward(request, response);
			}
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
	}

}
