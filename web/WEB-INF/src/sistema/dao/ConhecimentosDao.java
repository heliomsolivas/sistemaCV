package sistema.dao;

import generic.dao.Dao;

import org.hibernate.Session;

import sistema.bean.Conhecimentos;
import sistema.bean.User;
import br.com.caelum.vraptor.ioc.Component;

@Component
public class ConhecimentosDao extends Dao<Conhecimentos>{
	public ConhecimentosDao(Session session){
		super(session, User.class);
	}

}
