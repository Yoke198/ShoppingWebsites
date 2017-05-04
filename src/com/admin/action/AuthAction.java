package com.admin.action;

import java.util.List;

import net.sf.json.JSONArray;
import net.sf.json.JSONObject;

import org.apache.struts2.ServletActionContext;
import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.Namespace;
import org.apache.struts2.convention.annotation.ParentPackage;
import org.apache.struts2.convention.annotation.Result;

import com.admin.entity.AuthBean;
import com.admin.service.AuthService;
import com.admin.service.impl.AuthServcieImpl;
import com.opensymphony.xwork2.ActionSupport;

@ParentPackage("json-default")
@Namespace("/admin")
public class AuthAction extends ActionSupport{

	private static final long serialVersionUID = 1L;

	AuthService authService = new AuthServcieImpl();
	
	private JSONObject msg; //给前台的json数据
	
	private JSONArray fromObject;
	
	public JSONArray getFromObject() {
		return fromObject;
	}


	public void setFromObject(JSONArray fromObject) {
		this.fromObject = fromObject;
	}


	public JSONObject getMsg() {
		return msg;
	}


	public void setMsg(JSONObject msg) {
		this.msg = msg;
	}


	/**
	 * 跳转到 power 页面
	 * @return
	 */
	@Action(value="power",results={
			@Result(location="/WEB-INF/admin/power.jsp")
	})
	public String jump(){
		return SUCCESS;
	}
	
	
	/**
	 * 查询所有角色
	 * @return
	 */
	@Action(value="getAuthTree",results={
			@Result(type="json",params={"root","fromObject"})
	})
	public String getAllAuth(){
		
		// 获取节点的父节点
		String id = ServletActionContext.getRequest().getParameter("id");
		
		if(null == id || "".equals(id)){
			id = "99999";
		}
		
		List<AuthBean> authList = authService.getAuthList(Integer.parseInt(id));
		
		//需要判断一下 是否存在子节点，如果不存在子节点，那么需要将 state属性设置为open；
		for(AuthBean ab : authList){
			
			List<AuthBean> authList2 = authService.getAuthList(ab.getId());
			
			//说明该节点没有子节点
			if(null == authList2 || authList2.size() == 0){
				ab.setState("open");
			}
		}
		
		fromObject = JSONArray.fromObject(authList);
		
		return SUCCESS;
	}
	
}
