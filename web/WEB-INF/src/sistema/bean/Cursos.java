package sistema.bean;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;


@Entity(name = "USER_CURSOS")
@Table(name = "USER_CURSOS")
public class Cursos {
	
	private Long id;
	private FormacaoAcademica formacaoAcademica;
	private String modalidade;
	private String curso;
	private String instituicao;
	private String dataConclusao;
	
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
	@Column(name="modalidade", nullable=true)
	public String getModalidade() {
		return modalidade;
	}
	public void setModalidade(String modalidade) {
		this.modalidade = modalidade;
	}
	@Column(name="curso", nullable=true)
	public String getCurso() {
		return curso;
	}
	public void setCurso(String curso) {
		this.curso = curso;
	}
	
	@Column(name="instituicao", nullable=true)
	public String getInstituicao() {
		return instituicao;
	}
	public void setInstituicao(String instituicao) {
		this.instituicao = instituicao;
	}
	@Column(name="dataConclusao", nullable=true)
	public String getDataConclusao() {
		return dataConclusao;
	}
	public void setDataConclusao(String dataConclusao) {
		this.dataConclusao = dataConclusao;
	}

}
