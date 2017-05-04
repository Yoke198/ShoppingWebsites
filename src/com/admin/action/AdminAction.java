package com.admin.action;

import java.util.List;

import net.sf.json.JSONArray;
import net.sf.json.JSONObject;

import org.apache.struts2.ServletActionContext;
import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.Namespace;
import org.apache.struts2.convention.annotation.ParentPackage;
import org.apache.struts2.convention.annotation.Result;

import com.admin.entity.AdminEntity;
import com.admin.service.AdminService;
import com.admin.service.impl.AdminServiceImpl;
import com.opensymphony.xwork2.ActionSupport;

/**
 * ��̨����action
 * @author Administrator
 *
 */
@ParentPackage("json-default")
@Namespace("/admin")
public class AdminAction extends ActionSupport{

	AdminService adminService = new AdminServiceImpl();
	
	private JSONObject jso;
	
	public JSONObject getJso() {
		return jso;
	}
	public void setJso(JSONObject jso) {
		this.jso = jso;
	}

	private static final long serialVersionUID = 1L;
	
	/**
	 * ��ת����̨����ϵͳҳ��
	 * @return
	 */
	@Action(value="admin",results={
			@Result(location="/WEB-INF/admin/index.jsp",name="success")
	})
	public String skip(){
		
		return SUCCESS;
	}
	
	/**
	 * ��ת���û�����ģ��
	 * @return
	 */
	@Action(value="users",results={
			@Result(location="/WEB-INF/admin/users.jsp",name="success")
	})
	public String users(){
		
		return SUCCESS;
	}	
	
	/**
	 * ��ת����ɫ����ģ��
	 * @return
	 */
	@Action(value="role",results={
			@Result(location="/WEB-INF/admin/role.jsp",name="success")
	})
	public String role(){
		
		return SUCCESS;
	}	
	
	/**
	 * ��ת����ɫ����ģ��
	 * @return
	 */
	@Action(value="power",results={
			@Result(location="/WEB-INF/admin/power.jsp",name="success")
	})
	public String powers(){
		
		return SUCCESS;
	}	
	
	/**
	 * ��ȡ����Ա�б���Ϣ
	 * @return
	 */
	@Action(value="getUserList",results={
			@Result(type="json",params={"root","jso"})
	})
	public String getUserListByJson(){
		
		List<AdminEntity> adminList = adminService.getAdminList();
		
		JSONArray fromObject = JSONArray.fromObject(adminList);
		
		jso = new JSONObject();
		
		jso.put("rows", fromObject.toString());
		return "success"; 
	}
	
	/**
	 * ��½
	 * @return
	 */
	@Action(value="login",results={
			@Result(location="/WEB-INF/admin/index.jsp",name="success"),
			@Result(location="/WEB-INF/admin/login.jsp",name="fail")
	})
	public String login(){
		System.out.println("123");
		return SUCCESS;
	}

	/**
	 * ע��
	 */
	@Action(value="addUser",results={
			@Result(type="json",params={"root","true"})
	})
	public String register(){
		
		//��ȡ����
		String userName = ServletActionContext.getRequest().getParameter("userName");
		String userPass = ServletActionContext.getRequest().getParameter("userPass");
		
		AdminEntity adminEntity = new AdminEntity();
		adminEntity.setUserName(userName);
		adminEntity.setUserPass(userPass);
		
		boolean result = adminService.insert(adminEntity);
		
		return SUCCESS;
	}
	
	/**
	 * �༭
	 * @return
	 */
	public String edit(){
		
		return SUCCESS;
	}
	
	/**
	 * ɾ������Ա
	 */
	@Action(value="delectUser",results={
			@Result(type="json",params={"root","true"})
	})
	public String delete(){
		String aid = ServletActionContext.getRequest().getParameter("aid");
		
		boolean delecte = adminService.delecte(Integer.parseInt(aid));
		return SUCCESS;
	}
}






















