
-- 管理员
CREATE TABLE admin(

     a_id INT PRIMARY KEY AUTO_INCREMENT NOT NULL COMMENT '管理员id',
     a_name VARCHAR(20) NOT NULL COMMENT '管理员',
     a_password VARCHAR(20) NOT NULL COMMENT '密码'
     
);

-- 角色
CREATE TABLE role(
     r_id INT PRIMARY KEY AUTO_INCREMENT NOT NULL COMMENT '角色id',
     r_name VARCHAR(20) NOT NULL COMMENT '角色',
     r_desc VARCHAR(100) COMMENT '角色描述'

);

-- 权限
CREATE TABLE powers (
     p_id INT PRIMARY KEY AUTO_INCREMENT NOT NULL COMMENT '权限id',
     p_name VARCHAR(20) NOT NULL COMMENT '权限',
     p_method VARCHAR(200) COMMENT '权限方法',
     p_path VARCHAR(200) NOT NULL COMMENT '权限路径',
     p_desc VARCHAR(100) COMMENT '权限描述'

);

-- 管理员与角色中间表
CREATE TABLE admin_role(
	ar_id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
	a_id INT NOT NULL COMMENT '管理员id, 外键',
	r_id INT NOT NULL COMMENT '角色id, 外键',
	
	CONSTRAINT FOREIGN KEY (a_id) REFERENCES admin(a_id),
	CONSTRAINT FOREIGN KEY (r_id) REFERENCES role(r_id)

);

-- 角色与权限关系
CREATE TABLE role_powers(
	rp_id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
	r_id INT NULL COMMENT '角色id, 外键',
	p_id INT NULL COMMENT '权限id, 外键',
	
	CONSTRAINT FOREIGN KEY (r_id) REFERENCES role(r_id),
	CONSTRAINT FOREIGN KEY (p_id) REFERENCES powers(p_id)
	
);
















