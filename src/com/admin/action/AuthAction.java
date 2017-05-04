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
	
	private JSONObject msg; //��ǰ̨��json����
	
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
	 * ��ת�� power ҳ��
	 * @return
	 */
	@Action(value="power",results={
			@Result(location="/WEB-INF/admin/power.jsp")
	})
	public String jump(){
		return SUCCESS;
	}
	
	
	/**
	 * ��ѯ���н�ɫ
	 * @return
	 */
	@Action(value="getAuthTree",results={
			@Result(type="json",params={"root","fromObject"})
	})
	public String getAllAuth(){
		
		// ��ȡ�ڵ�ĸ��ڵ�
		String id = ServletActionContext.getRequest().getParameter("id");
		
		if(null == id || "".equals(id)){
			id = "99999";
		}
		
		List<AuthBean> authList = authService.getAuthList(Integer.parseInt(id));
		
		//��Ҫ�ж�һ�� �Ƿ�����ӽڵ㣬����������ӽڵ㣬��ô��Ҫ�� state��������Ϊopen��
		for(AuthBean ab : authList){
			
			List<AuthBean> authList2 = authService.getAuthList(ab.getId());
			
			//˵���ýڵ�û���ӽڵ�
			if(null == authList2 || authList2.size() == 0){
				ab.setState("open");
			}
		}
		
		fromObject = JSONArray.fromObject(authList);
		
		return SUCCESS;
	}
	
}
