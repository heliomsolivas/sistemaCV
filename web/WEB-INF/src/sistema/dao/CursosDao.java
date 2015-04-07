package sistema.dao;

import generic.dao.Dao;

import org.hibernate.Session;

import sistema.bean.Cursos;
import sistema.bean.User;
import br.com.caelum.vraptor.ioc.Component;

@Component
public class CursosDao extends Dao<Cursos>{
	public CursosDao(Session session){
		super(session, User.class);
	}

}
