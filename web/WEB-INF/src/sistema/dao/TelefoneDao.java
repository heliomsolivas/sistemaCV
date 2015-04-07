package sistema.dao;

import generic.dao.Dao;

import org.hibernate.Session;

import sistema.bean.Telefones;
import sistema.bean.User;
import br.com.caelum.vraptor.ioc.Component;

@Component
public class TelefoneDao extends Dao<Telefones>{
	public TelefoneDao(Session session){
		super(session, User.class);
	}

}
