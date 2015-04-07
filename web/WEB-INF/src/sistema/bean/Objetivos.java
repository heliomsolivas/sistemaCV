package sistema.bean;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity(name="USER_OBJETIVOS")
@Table(name="USER_OBJETIVOS")
public class Objetivos {
	
	private Long id;
	private User user;
	private String cargoPretendido;
	private String salarioPretendido;
	private String areaInteresse;
	
	@ManyToOne
	@JoinColumn(name="fk_user", nullable=false)
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
	
	@Id
	@GeneratedValue
	@Column(name="id", nullable=false)
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	
	@Column(name="cargoPretendido", nullable=true)
	public String getCargoPretendido() {
		return cargoPretendido;
	}
	public void setCargoPretendido(String cargoPretendido) {
		this.cargoPretendido = cargoPretendido;
	}
	
	@Column(name="salarioPretendido", nullable=true)
	public String getSalarioPretendido() {
		return salarioPretendido;
	}
	public void setSalarioPretendido(String salarioPretendido) {
		this.salarioPretendido = salarioPretendido;
	}
	
	@Column(name="areaInteresse", nullable=true)
	public String getAreaInteresse() {
		return areaInteresse;
	}
	public void setAreaInteresse(String areaInteresse) {
		this.areaInteresse = areaInteresse;
	}

}
