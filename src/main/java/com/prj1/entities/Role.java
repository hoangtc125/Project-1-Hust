package com.prj1.entities;

import java.util.HashSet;
import java.util.Set;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import static javax.persistence.GenerationType.IDENTITY;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

// đánh dấu là một entity chịu sự quản lý của hirbenate
@Entity
// entity này đại diện cho table role trong db cttsis
@Table(name = "role", catalog = "cttsis")
public class Role implements java.io.Serializable {

	private static final long serialVersionUID = 1L;
	
	@Id // khóa chính
	@GeneratedValue(strategy = IDENTITY)
	@Column(name = "id", unique = true, nullable = false)
	private Integer id;
	
	@Column(name = "name", length = 45)
	private String name;
	
	@OneToMany(fetch = FetchType.LAZY, mappedBy = "role")
	private Set<UsersRoles> usersRoleses = new HashSet<UsersRoles>(0);

	public Role() {
	}

	public Role(String name, Set<UsersRoles> usersRoleses) {
		this.name = name;
		this.usersRoleses = usersRoleses;
	}

	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getName() {
		return this.name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public Set<UsersRoles> getUsersRoleses() {
		return this.usersRoleses;
	}

	public void setUsersRoleses(Set<UsersRoles> usersRoleses) {
		this.usersRoleses = usersRoleses;
	}

}
