package com.prj1.entities;

import static javax.persistence.GenerationType.IDENTITY;

import java.sql.Date;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.persistence.Transient;
import javax.persistence.UniqueConstraint;

import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;

@Entity(name = "User")
@Table(name = "users"
, catalog = "cttsis", uniqueConstraints = @UniqueConstraint(columnNames = "username")
)
public class User implements java.io.Serializable {

	private static final long serialVersionUID = 1L;
	
	@Id
	@GeneratedValue(strategy = IDENTITY)
	@Column(name = "id", unique = true, nullable = false)
	private Integer id = -1;
	
	@Column(name = "name")
	private String name = "";
	
	@Column(name = "mssv")
	private String mssv = "";
	
	@Column(name = "clazz")
	private String clazz = "";
	
	@Column(name = "isDeleted")
	private Integer isDeleted = 0;

	@Column(name = "coin", length = 45)
	private String coin = "0";
	
	@Column(name = "dateDeleted")
	private Date dateDeleted = null;
	
	@Column(name = "username", unique = true, length = 45)
	private String username = "";
	
	@Column(name = "password")
	private String password = "";
	
	@Column(name = "enabled", nullable = false, columnDefinition = "TINYINT(1)")
	private Boolean enabled = false;
	
	@OneToMany(fetch = FetchType.EAGER, mappedBy = "users")
	private Set<UsersRoles> usersRoleses = new HashSet<UsersRoles>(0);

	public User() {
	}

	public User(final String username, final String password, final Boolean enabled,
			final Set<UsersRoles> usersRoleses) {
		this.username = username;
		this.password = password;
		this.enabled = enabled;
		this.usersRoleses = usersRoleses;
	}


	public Integer getId() {
		return this.id;
	}

	public void setId(final Integer id) {
		this.id = id;
	}

	public String getUsername() {
		return this.username;
	}

	public void setUsername(final String username) {
		this.username = username;
	}

	public String getPassword() {
		return this.password;
	}

	public void setPassword(final String password) {
		this.password = password;
	}

	public Boolean getEnabled() {
		return this.enabled;
	}

	public void setEnabled(final Boolean enabled) {
		this.enabled = enabled;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public Integer getIsDeleted() {
		return isDeleted;
	}

	public void setIsDeleted(Integer isDeleted) {
		this.isDeleted = isDeleted;
	}

	public Date getDateDeleted() {
		return dateDeleted;
	}

	public void setDateDeleted(Date dateDeleted) {
		this.dateDeleted = dateDeleted;
	}

	public String getMssv() {
		return mssv;
	}

	public void setMssv(String mssv) {
		this.mssv = mssv;
	}

	public String getClazz() {
		return clazz;
	}

	public void setClazz(String clazz) {
		this.clazz = clazz;
	}

	public Set<UsersRoles> getUsersRoleses() {
		return this.usersRoleses;
	}

	public void setUsersRoleses(final Set<UsersRoles> usersRoleses) {
		this.usersRoleses = usersRoleses;
	}
	
	public String getRole() {
		for (UsersRoles usersRoles: this.usersRoleses) {
			return usersRoles.getRole().getName();
		}
		return "";
	}
	
	public String getNameVN() {
		String [] strings = this.getName().split(" ");
		return strings[strings.length - 1];
	}

	public String getCoin() {
		return coin;
	}

	public void setCoin(String coin) {
		this.coin = coin;
	}

	@Transient
	public List<GrantedAuthority> getAuthorities() {
		List<GrantedAuthority> authorities = new ArrayList<GrantedAuthority>();
		for (UsersRoles usersRoles: this.usersRoleses) {
			System.out.println(usersRoles.getRole().getName());
			authorities.add(new SimpleGrantedAuthority(usersRoles.getRole().getName()));
		}
		return authorities;
	}
	
	public String toString() {
		return this.username + " " + this.password;
	}

}
