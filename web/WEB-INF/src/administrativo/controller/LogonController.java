package administrativo.controller;

import generic.component.UserSession;
import administrativo.dao.LogonDao;
import br.com.caelum.vraptor.Path;
import br.com.caelum.vraptor.Resource;
import br.com.caelum.vraptor.Result;
import br.com.caelum.vraptor.Validator;

@Resource
public class LogonController {
	
	private final LogonDao logonDao;
	private final Result result;
	private final Validator validator;
	private final UserSession userSession;
	
	public LogonController(LogonDao logonDao, Result result, Validator validator, UserSession userSession){
		this.logonDao=logonDao;
		this.result=result;
		this.validator=validator;
		this.userSession=userSession;
		
	}
	
	@Path("/login")
	public void loginPage(){

	}
	

}
