package sistema.bean;

import java.util.Collection;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;


@Entity(name="USER")
@Table(name="USER")
public class User {
	
	private Long id;
	private String nome;
	private String numeroCpf;
	private String numeroRg;
	private String dataNascimento;
	private String estadoCivil;
	private String sexo;
	private String nacionalidade;
	private String endereco;
	private String numero;
	private String complemento;
	private String bairro;
	private String cidade;
	private String estado;
	private String cep;
	private String email;
	private String realizacoes;
	private Objetivos objetivos;
	private Collection<Telefones> telefones;
	private Collection<Experiencias> experiencias;
	private FormacaoAcademica formacaoAcademica;
	
	
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	@Column(name="id", nullable=false)
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	
	@Column(name="nome", nullable=false)
	public String getNome() {
		return nome;
	}
	public void setNome(String nome) {
		this.nome = nome;
	}
	
	@Column(name="numeroCpf", nullable=false)
	public String getNumeroCpf() {
		return numeroCpf;
	}
	public void setNumeroCpf(String numeroCpf) {
		this.numeroCpf = numeroCpf;
	}
	
	@Column(name="numeroRg", nullable=false)
	public String getNumeroRg() {
		return numeroRg;
	}
	public void setNumeroRg(String numeroRg) {
		this.numeroRg = numeroRg;
	}
	@Column(name="dataNascimento", nullable=false)
	public String getDataNascimento() {
		return dataNascimento;
	}
	public void setDataNascimento(String dataNascimento) {
		this.dataNascimento = dataNascimento;
	}
	@Column(name="estadoCivil", nullable=false)
	public String getEstadoCivil() {
		return estadoCivil;
	}
	public void setEstadoCivil(String estadoCivil) {
		this.estadoCivil = estadoCivil;
	}
	@Column(name="sexo", nullable=false)
	public String getSexo() {
		return sexo;
	}
	public void setSexo(String sexo) {
		this.sexo = sexo;
	}
	
	@Column(name="nacionalidade", nullable=false)
	public String getNacionalidade() {
		return nacionalidade;
	}
	public void setNacionalidade(String nacionalidade) {
		this.nacionalidade = nacionalidade;
	}
	
	@Column(name="endereco", nullable=false)
	public String getEndereco() {
		return endereco;
	}
	public void setEndereco(String endereco) {
		this.endereco = endereco;
	}
	
	@Column(name="numero", nullable=false)
	public String getNumero() {
		return numero;
	}
	public void setNumero(String numero) {
		this.numero = numero;
	}
	
	@Column(name="complemento", nullable=false)
	public String getComplemento() {
		return complemento;
	}
	public void setComplemento(String complemento) {
		this.complemento = complemento;
	}
	
	@Column(name="bairro", nullable=false)
	public String getBairro() {
		return bairro;
	}
	public void setBairro(String bairro) {
		this.bairro = bairro;
	}
	@Column(name="cidade", nullable=false)
	public String getCidade() {
		return cidade;
	}
	public void setCidade(String cidade) {
		this.cidade = cidade;
	}
	@Column(name="estado", nullable=false)
	public String getEstado() {
		return estado;
	}
	public void setEstado(String estado) {
		this.estado = estado;
	}
	@Column(name="cep", nullable=false)
	public String getCep() {
		return cep;
	}
	public void setCep(String cep) {
		this.cep = cep;
	}
	@Column(name="email", nullable=false)
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	@Column(name="realizacoes", nullable=false)
	public String getRealizacoes() {
		return realizacoes;
	}
	public void setRealizacoes(String realizacoes) {
		this.realizacoes = realizacoes;
	}
	
	
	
	
	@ManyToOne
	@JoinColumn(name="fk_formacaoAcademica", nullable=true)
	public FormacaoAcademica getFormacaoAcademica() {
		return formacaoAcademica;
	}
	public void setFormacaoAcademica(FormacaoAcademica formacaoAcademica) {
		this.formacaoAcademica = formacaoAcademica;
	}
	
	@OneToMany(mappedBy="user", cascade=CascadeType.REMOVE, fetch=FetchType.LAZY)
	public Collection<Telefones> getTelefones() {
		return telefones;
	}
	public void setTelefones(Collection<Telefones> telefones) {
		this.telefones = telefones;
	}
	
	@OneToMany(mappedBy="user", cascade=CascadeType.REMOVE, fetch=FetchType.LAZY)
	public Collection<Experiencias> getExperiencias() {
		return experiencias;
	}
	public void setExperiencias(Collection<Experiencias> experiencias) {
		this.experiencias = experiencias;
	}
	
	@ManyToOne
	@JoinColumn(name="fk_objetivos", nullable=true)
	public Objetivos getObjetivos() {
		return objetivos;
	}
	public void setObjetivos(Objetivos objetivos) {
		this.objetivos = objetivos;
	}

}
