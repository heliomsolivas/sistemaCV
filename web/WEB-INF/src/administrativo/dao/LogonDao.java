package administrativo.dao;

import generic.dao.Dao;

import org.hibernate.Session;

import sistema.bean.User;
import administrativo.bean.Logon;
import br.com.caelum.vraptor.ioc.Component;

@Component
public class LogonDao extends Dao<Logon>{
	public LogonDao(Session session){
		super(session, User.class);
	}

}
