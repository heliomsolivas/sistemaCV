package sistema.dao;

import generic.dao.Dao;

import org.hibernate.Session;

import sistema.bean.Objetivos;
import sistema.bean.User;
import br.com.caelum.vraptor.ioc.Component;

@Component
public class ObjetivosDao extends Dao<Objetivos>{
	public ObjetivosDao(Session session){
		super(session, User.class);
	}

}
