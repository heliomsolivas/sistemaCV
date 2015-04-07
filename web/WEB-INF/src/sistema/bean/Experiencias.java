package sistema.bean;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity(name="USER_EXPERIENCIAS")
@Table(name="USER_EXPERIENCIAS")
public class Experiencias {
	
	private Long id;
	private User user;
	private String empresa;
	private String cargo;
	private String ramoAtividade;
	private String dataEntrada;
	private String dataSaida;
	private String atividades;
	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY) 
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
	
	@Column(name="empresa", nullable=false)
	public String getEmpresa() {
		return empresa;
	}
	public void setEmpresa(String empresa) {
		this.empresa = empresa;
	}
	
	@Column(name="cargo", nullable=false)
	public String getCargo() {
		return cargo;
	}
	public void setCargo(String cargo) {
		this.cargo = cargo;
	}
	@Column(name="ramoAtividade", nullable=false)
	public String getRamoAtividade() {
		return ramoAtividade;
	}
	public void setRamoAtividade(String ramoAtividade) {
		this.ramoAtividade = ramoAtividade;
	}
	@Column(name="dataEntrada", nullable=false)
	public String getDataEntrada() {
		return dataEntrada;
	}
	public void setDataEntrada(String dataEntrada) {
		this.dataEntrada = dataEntrada;
	}
	@Column(name="dataSaida", nullable=false)
	public String getDataSaida() {
		return dataSaida;
	}
	public void setDataSaida(String dataSaida) {
		this.dataSaida = dataSaida;
	}
	@Column(name="atividades", nullable=false)
	public String getAtividades() {
		return atividades;
	}
	public void setAtividades(String atividades) {
		this.atividades = atividades;
	}

}
