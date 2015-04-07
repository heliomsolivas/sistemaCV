package sistema.controller;


import java.util.List;

import org.hibernate.Session;

import sistema.bean.Conhecimentos;
import sistema.bean.Cursos;
import sistema.bean.Experiencias;
import sistema.bean.FormacaoAcademica;
import sistema.bean.Idiomas;
import sistema.bean.Objetivos;
import sistema.bean.Telefones;
import sistema.bean.User;
import sistema.dao.ConhecimentosDao;
import sistema.dao.CursosDao;
import sistema.dao.ExperienciasDao;
import sistema.dao.FormacaoAcademicaDao;
import sistema.dao.IdiomasDao;
import sistema.dao.ObjetivosDao;
import sistema.dao.TelefoneDao;
import sistema.dao.UserDao;
import br.com.caelum.vraptor.Path;
import br.com.caelum.vraptor.Post;
import br.com.caelum.vraptor.Put;
import br.com.caelum.vraptor.Resource;
import br.com.caelum.vraptor.Result;
import br.com.caelum.vraptor.Validator;

@Resource
public class UserController {
	
	private final UserDao userDao;
	private final TelefoneDao telefoneDao;
	private final ExperienciasDao experienciasDao;
	private final FormacaoAcademicaDao formacaoAcademicaDao;
	private final ObjetivosDao objetivosDao;
	private final CursosDao cursosDao;
	private final ConhecimentosDao conhecimentosDao;
	private final IdiomasDao idiomasDao;
	private final Session session;
	private final Result result;
	private final Validator validator;
	
	public UserController(UserDao userDao, TelefoneDao telefoneDao, CursosDao cursosDao, ObjetivosDao objetivosDao, ConhecimentosDao conhecimentosDao, ExperienciasDao experienciasDao, FormacaoAcademicaDao formacaoAcademicaDao, IdiomasDao idiomasDao, Result result, Session session, Validator validator){
		this.userDao = userDao;
		this.telefoneDao = telefoneDao;
		this.conhecimentosDao=conhecimentosDao;
		this.cursosDao=cursosDao;
		this.experienciasDao=experienciasDao;
		this.objetivosDao=objetivosDao;
		this.formacaoAcademicaDao=formacaoAcademicaDao;
		this.idiomasDao=idiomasDao;
		this.session=session;
		this.result=result;
		this.validator=validator;
	}
	
	@Path("/users")
	@Post
	public void index(User user, FormacaoAcademica formacaoAcademica, Objetivos objetivos, 
			List<Cursos> cursosList, List<Conhecimentos> conhecimentosList, List<Telefones> telefonesList, 
			List<Experiencias> experienciasList, List<Idiomas> idiomasList){		//Não recebe Collection
		
		try{
			
			userDao.atualizar(user);	//Cria o user
			
			objetivos.setUser(user);
			formacaoAcademica.setUser(user);	//Cria fk_formacaoAcademica no user
			
			user.setFormacaoAcademica(formacaoAcademica);	//Seta o fk_formacaoAcademica no id do formacaoAcademica
			user.setObjetivos(objetivos);
			
			objetivosDao.atualizar(objetivos);
			formacaoAcademicaDao.atualizar(formacaoAcademica);	//Salva as condições
			

			for(Telefones numeroTelefone : telefonesList){	//Precisa do for por causa da Lista
				numeroTelefone.setUser(user);
				telefoneDao.adicionar(numeroTelefone);	
			}
			
			for(Experiencias empresa : experienciasList){	//Precisa do for por causa da Lista
				empresa.setUser(user);
				experienciasDao.adicionar(empresa);
			}
			
			for(Idiomas idioma : idiomasList){	//Precisa do for por causa da Lista
				idioma.setFormacaoAcademica(formacaoAcademica);
				idiomasDao.adicionar(idioma);
			}
			
			for(Cursos curso : cursosList){	//Precisa do for por causa da Lista
				curso.setFormacaoAcademica(formacaoAcademica);
				cursosDao.adicionar(curso);
			}
			
			for(Conhecimentos conhecimento : conhecimentosList){	//Precisa do for por causa da Lista
				conhecimento.setFormacaoAcademica(formacaoAcademica);
				conhecimentosDao.adicionar(conhecimento);
			}
			
		}catch (Exception e) {
			System.out.println("Erro");
				
			}
		result.include("mensagem", "Usuário cadastrado com sucesso!");
		result.redirectTo(UserController.class).list();
		}
	
	@Path("/users/delete/{id}")
	public void delete(User user, FormacaoAcademica formacaoAcademica){
		formacaoAcademicaDao.remover(formacaoAcademica);
		userDao.remover(user);
		result.include("mensagem", "Usuário excluído com sucesso!");
		result.redirectTo(UserController.class).list();
	}
	
	@Put
	@Path("/users/edit")
	public void edit(User user){
		userDao.atualizar(user);
		result.include("mensagem", "Usuário alterado com sucesso!");
		result.redirectTo(UserController.class).list();
	}
	
	@Path("/")
	public List<User> list(){
		return userDao.listarTudo();
	}

}
