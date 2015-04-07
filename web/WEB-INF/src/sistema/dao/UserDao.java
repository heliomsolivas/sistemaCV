package sistema.dao;

import generic.dao.Dao;

import org.hibernate.Session;

import sistema.bean.User;
import br.com.caelum.vraptor.ioc.Component;

@Component
public class UserDao extends Dao<User>{
	public UserDao(Session session){
		super(session, User.class);
	}

}
