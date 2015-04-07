package generic.component;

import administrativo.bean.Logon;
import br.com.caelum.vraptor.ioc.Component;
import br.com.caelum.vraptor.ioc.SessionScoped;

@Component
@SessionScoped
public class UserSession {

	private Logon logon;

	public boolean isLogged() {
		return this.logon != null;
	}

	public void logon(Logon logon) {
		this.logon= logon;
	}

	public void logout() {
		this.logon= null;
	}

	public Logon getLogon() {
		return logon;
	}

}