package proyectoreciclaje.login.bean;

import java.io.Serializable;
//Aqui hemos creado el LoginBean, donde almacenamos los valores del login que previamente usaremos
public class LoginBean implements Serializable{

	
		private static final long serialVersionUID = 1L;
		private String username;
		private String password;

		public String getUsername() {
			return username;
		}

		public void setUsername(String username) {
			this.username = username;
		}

		public String getPassword() {
			return password;
		}

		public void setPassword(String password) {
			this.password = password;
		}
	
}
