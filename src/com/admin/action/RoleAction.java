package com.admin.action;

import java.util.List;

import net.sf.json.JSONArray;
import net.sf.json.JSONObject;

import org.apache.struts2.ServletActionContext;
import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.Namespace;
import org.apache.struts2.convention.annotation.ParentPackage;
import org.apache.struts2.convention.annotation.Result;

import com.admin.entity.RoleEntity;
import com.admin.service.RoleService;
import com.admin.service.impl.RoleServiceImpl;
import com.opensymphony.xwork2.ActionSupport;

/**
 * ��̨����action
 * @author Administrator
 *
 */
@ParentPackage("json-default")
@Namespace("/admin")
public class RoleAction extends ActionSupport{

	RoleService roleService = new RoleServiceImpl();
	
	private JSONObject jso;
	
	public JSONObject getJso() {
		return jso;
	}
	public void setJso(JSONObject jso) {
		this.jso = jso;
	}
	
	private int pageRows=5;//ҳ������
	private int currentPage=1;//��ǰҳ

	public int getPageRows() {
		return pageRows;
	}
	public void setPageRows(int pageRows) {
		this.pageRows = pageRows;
	}
	public int getCurrentPage() {
		return currentPage;
	}
	public void setCurrentPage(int currentPage) {
		this.currentPage = currentPage;
	}

	private static final long serialVersionUID = 1L;
	
		
	
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
	 * ��ȡ��ɫ�б���Ϣ
	 * @return
	 */
	@Action(value="getRoleList",results={
			@Result(type="json",params={"root","jso"})
	})
	public String getRoleListByJson(){
		
		List<RoleEntity> roleList = roleService.getRoleList();
		
		JSONArray fromObject = JSONArray.fromObject(roleList);
		
		//��listת��ΪJSONObject����
		jso = new JSONObject();
		jso.put("rows", fromObject.toString());
		
		int records = roleList.size();//������
		
		int totalPages = 0;//ҳ��
		if(records % pageRows == 0){
			totalPages=records/pageRows;
		}else{
			totalPages=records/pageRows+1;
		}
		
		jso.put("total", totalPages);//ҳ��
		jso.put("records", roleList.size());//������
		jso.put("page", currentPage);//��ǰҳ
		
		return "success"; 
	}
	

	/**
	 * ע��
	 */
	@Action(value="addRole",results={
			@Result(type="json",params={"root","true"})
	})
	public String register(){
		
		//��ȡ����
		String userName = ServletActionContext.getRequest().getParameter("userName");
		String userPass = ServletActionContext.getRequest().getParameter("userPass");
		
		RoleEntity roleEntity = new RoleEntity();
		roleEntity.setRoleName(userName);
		roleEntity.setRoleDesc(userPass);
		
		boolean result = roleService.insert(roleEntity);
		
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
	 * ɾ����ɫ
	 */
	@Action(value="delectRole",results={
			@Result(type="json",params={"root","true"})
	})
	public String delete(){
		String aid = ServletActionContext.getRequest().getParameter("aid");
		
		boolean delecte = roleService.delecte(Integer.parseInt(aid));
		return SUCCESS;
	}
	/**
	 * ����ɫ����û�
	 */
	@Action(value="roleAddUser",results={
			@Result(type="json",params={"root","true"})
	})
	public String roleAddUsers(){
		
		String rid = ServletActionContext.getRequest().getParameter("rid");
		String userids = ServletActionContext.getRequest().getParameter("userids");
		
		String[] ids = userids.split(",");
		
		for(String id : ids){
			//id��ֵ
			if(null != id && !"".equals(id)){
				
				roleService.saveUserAsRole(Integer.parseInt(rid), Integer.parseInt(id));
				
			}
		}
		
		
		return SUCCESS;
	}
}






















