package sistema.dao;

import generic.dao.Dao;

import org.hibernate.Session;

import sistema.bean.FormacaoAcademica;
import sistema.bean.User;
import br.com.caelum.vraptor.ioc.Component;

@Component
public class FormacaoAcademicaDao extends Dao<FormacaoAcademica>{
	public FormacaoAcademicaDao(Session session){
		super(session, User.class);
	}

}
