package sistema.dao;

import generic.dao.Dao;

import org.hibernate.Session;

import sistema.bean.Idiomas;
import sistema.bean.User;
import br.com.caelum.vraptor.ioc.Component;

@Component
public class IdiomasDao extends Dao<Idiomas>{
	public IdiomasDao(Session session){
		super(session, User.class);
	}

}
