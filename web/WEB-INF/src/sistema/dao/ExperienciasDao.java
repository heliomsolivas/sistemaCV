package sistema.dao;

import generic.dao.Dao;

import org.hibernate.Session;

import sistema.bean.Experiencias;
import sistema.bean.User;
import br.com.caelum.vraptor.ioc.Component;

@Component
public class ExperienciasDao extends Dao<Experiencias>{
	public ExperienciasDao(Session session){
		super(session, User.class);
	}

}
