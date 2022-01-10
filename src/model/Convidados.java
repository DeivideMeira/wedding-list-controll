package model;

import java.io.Serializable;

public class Convidados implements Serializable {
	private static final long serialVersionUID = 1L;
	private int id;
	private String nome;
	private String cpf;
	private String parentesco;
	private String acompanhante;
	
	public Convidados(int id, String nome, String cpf, String parentesco, String acompanhante) {
		this.id = id;
		this.nome = nome;
		this.cpf = cpf;
		this.parentesco = parentesco;
		this.acompanhante = acompanhante;
	}
	public Convidados() {
	}
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getNome() {
		return nome;
	}
	public void setNome(String nome) {
		this.nome = nome;
	}
	public String getCpf() {
		return cpf;
	}
	public void setCpf(String cpf) {
		this.cpf = cpf;
	}
	public String getParentesco() {
		return parentesco;
	}
	public void setParentesco(String parentesco) {
		this.parentesco = parentesco;
	}
	public String getAcompanhante() {
		return acompanhante;
	}
	public void setAcompanhante(String acompanhante) {
		this.acompanhante = acompanhante;
	}

	

	@Override
	public String toString() {
		return "Convidados [id= " + id + ", nome= " + nome + ", cpf= " + cpf + ", parentesco= " + parentesco
				+ ", acompanhante= " + acompanhante + "]";
	}
	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		Convidados other = (Convidados) obj;
		if (acompanhante == null) {
			if (other.acompanhante != null)
				return false;
		} else if (!acompanhante.equals(other.acompanhante))
			return false;
		if (cpf == null) {
			if (other.cpf != null)
				return false;
		} else if (!cpf.equals(other.cpf))
			return false;
		if (id != other.id)
			return false;
		if (nome == null) {
			if (other.nome != null)
				return false;
		} else if (!nome.equals(other.nome))
			return false;
		if (parentesco == null) {
			if (other.parentesco != null)
				return false;
		} else if (!parentesco.equals(other.parentesco))
			return false;
		return true;
	}
	
	
}
