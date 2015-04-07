package sistema.bean;

import java.util.Collection;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;



@Entity(name = "USER_FORMACAO")
@Table(name = "USER_FORMACAO")
public class FormacaoAcademica {
	
	private Long id;
	private User user;
	private Collection<Cursos> cursos;
	private Collection<Idiomas> idiomas;
	private Collection<Conhecimentos> conhecimentos;
	
	@Id
	@GeneratedValue
	@Column(name="id", nullable=false)
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	
	@ManyToOne
	@JoinColumn(name="fk_user", nullable=false)
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
	
	@OneToMany(mappedBy="formacaoAcademica", cascade=CascadeType.REMOVE, fetch=FetchType.LAZY)
	public Collection<Idiomas> getIdiomas() {
		return idiomas;
	}
	public void setIdiomas(Collection<Idiomas> idiomas) {
		this.idiomas = idiomas;
	}
	
	@OneToMany(mappedBy="formacaoAcademica", cascade=CascadeType.REMOVE, fetch=FetchType.LAZY)
	public Collection<Cursos> getCursos() {
		return cursos;
	}
	public void setCursos(Collection<Cursos> cursos) {
		this.cursos = cursos;
	}

}
