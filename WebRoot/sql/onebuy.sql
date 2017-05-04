
-- 会员表
CREATE TABLE ob_member(

	m_id INT PRIMARY KEY AUTO_INCREMENT COMMENT '用户id',
	m_name VARCHAR(20) NOT NULL UNIQUE COMMENT '用户名',
	m_pass VARCHAR(20) NOT NULL COMMENT '用户密码',
	m_email VARCHAR(100) UNIQUE COMMENT '用户邮箱',
	m_phone VARCHAR(20) UNIQUE COMMENT '用户手机',
	m_address VARCHAR(200) COMMENT '用户地址',
	m_sexy CHAR DEFAULT '0' COMMENT '用户性别',
	m_portrait VARCHAR(200) COMMENT '用户头像'
);


-- 管理员表
CREATE TABLE ob_conservator(
	c_id INT PRIMARY KEY AUTO_INCREMENT COMMENT '管理员id',
	c_name VARCHAR(20) NOT NULL UNIQUE COMMENT '管理员名',
	c_pass VARCHAR(20) NOT NULL COMMENT '管理员密码',
	c_email VARCHAR(100) UNIQUE COMMENT '管理员邮箱',
	c_phone VARCHAR(20) UNIQUE COMMENT '管理员手机'
);

-- 角色表
CREATE TABLE ob_role(
	r_id INT PRIMARY KEY AUTO_INCREMENT COMMENT '角色id',
	r_name VARCHAR(20) NOT NULL COMMENT '角色名称',
	r_desc VARCHAR(200) NOT NULL COMMENT '角色描述'
);

-- 权限表
CREATE TABLE ob_auth(
	a_id INT PRIMARY KEY AUTO_INCREMENT COMMENT '权限id',
	a_name VARCHAR(20) NOT NULL COMMENT '权限名称',
	a_path VARCHAR(100) NOT NULL COMMENT '权限路径',
	a_method VARCHAR(100) COMMENT '权限方法',
	a_desc VARCHAR(200) COMMENT '权限描述'
);

-- 用户角色中间表
CREATE TABLE ob_conser_role(

	cr_id INT PRIMARY KEY AUTO_INCREMENT COMMENT 'id',
	c_id INT NOT NULL COMMENT '用户id , 外键',
	r_id INT NOT NULL COMMENT '角色id , 外键',
	
	CONSTRAINT FOREIGN KEY (c_id) REFERENCES ob_conservator(c_id),
	CONSTRAINT FOREIGN KEY (r_id) REFERENCES ob_role(r_id)
);

-- 角色权限中间表
CREATE TABLE ob_role_auth(
	ra_id INT PRIMARY KEY AUTO_INCREMENT COMMENT 'id',
	r_id INT NOT NULL COMMENT '角色id , 外键',
	a_id INT NOT NULL COMMENT '权限id , 外键',
	
	CONSTRAINT FOREIGN KEY (r_id) REFERENCES ob_role(r_id),
	CONSTRAINT FOREIGN KEY (a_id) REFERENCES ob_auth(a_id)
);

















 