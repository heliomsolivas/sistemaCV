package sistema.bean;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;


@Entity(name = "USER_CONHECIMENTOS")
@Table(name = "USER_CONHECIMENTOS")
public class Conhecimentos {
	
	private Long id;
	private FormacaoAcademica formacaoAcademica;
	private String conhecimento;
	private String nivel;
	
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
	@JoinColumn(name="fk_formacaoAcademica", nullable=false)
	public FormacaoAcademica getFormacaoAcademica() {
		return formacaoAcademica;
	}
	public void setFormacaoAcademica(FormacaoAcademica formacaoAcademica) {
		this.formacaoAcademica = formacaoAcademica;
	}
	
	@Column(name="conhecimento", nullable=true)
	public String getConhecimento() {
		return conhecimento;
	}
	public void setConhecimento(String conhecimento) {
		this.conhecimento = conhecimento;
	}
	@Column(name="nivel", nullable=true)
	public String getNivel() {
		return nivel;
	}
	public void setNivel(String nivel) {
		this.nivel = nivel;
	}

}
