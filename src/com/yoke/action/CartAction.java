package com.yoke.action;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.yoke.entity.GoodsEntity;
import com.yoke.service.CommodityService;
import com.yoke.service.impl.CommodityServiceImpl;

public class CartAction extends ActionSupport{
	
	private static final long serialVersionUID = 1L;

	/**
	 * ���ﳵ
	 * @return
	 */
	
	CommodityService commodityService = new CommodityServiceImpl();
	
	List<Integer> cart = new ArrayList<Integer>();
	
	public String cart(){

		String method = ServletActionContext.getRequest().getParameter("method");
		
		if("add".equals(method)){
			//��ȡ���ﳵ
			Object obj = ServletActionContext.getRequest().getSession().getAttribute("cart");
			
			//���session����û�й��ﳵ
			if(null == obj){
				
				cart = new ArrayList<Integer>();
				
			}else{
				
				cart = (List<Integer>)obj;
			}
			//����Ʒ��ӵ����ﳵ
			String gid = ServletActionContext.getRequest().getParameter("cid");
			
			if(null != gid && !"".equals(gid)){
			cart.add(Integer.parseInt(gid));
			
			//�ѹ��ﳵ���浽session
			ServletActionContext.getRequest().getSession().setAttribute("cart", cart);
			return SUCCESS;
			}
			}else if("show".equals(method)){//չʾ���ﳵ�������Ʒ����
				
				//��ȡ���ﳵ
				Object obj1 = ServletActionContext.getRequest().getSession().getAttribute("cart");
				
				if(null != obj1){
					
					List<Integer> list = (List<Integer>)obj1;
					
					//����鵽����Ʒ��Ϣ
					List<GoodsEntity> shop=new ArrayList<GoodsEntity>();
					
					GoodsEntity ge;
					
					
					boolean bl = true;
					
					//����id,ѭ����ѯ��Ʒ��Ϣ
					for(Integer it : list){
						
						//ѭ���Ѿ���ѯ��������Ʒ�б�
						for(GoodsEntity gs : shop){
							
							if(gs.getCid() == it){//ͬһ����Ʒ 
								
								gs.setGoodsnumber(gs.getGoodsnumber()+1);
								
								bl = false;
								
								break;
								
							}
						}
						
						if(bl){
							ge = commodityService.getGoodsById(it);
							ge.setGoodsnumber(1);
							shop.add(ge);
							
						}
						bl=true;//��ʼ��
						
					}
					
					//ServletActionContext.getRequest().getSession().setAttribute("goods", goods);
					ActionContext.getContext().getSession().put("shop",shop);
	     }	
				
				
			
				return "cartpage";
		}else if("calculates".equals(method)){

			
			 //��ȡ���ﳵ
			 List<GoodsEntity> shop = (List<GoodsEntity>)ServletActionContext.getRequest().getSession().getAttribute("shop");
			 
			 //��ȡ��Ʒid
			 cart = (List<Integer>) ServletActionContext.getRequest().getSession().getAttribute("cart");
			 
			 
				String type = ServletActionContext.getRequest().getParameter("type");
				String gid = ServletActionContext.getRequest().getParameter("gid");
			 
			 int count=1;
			 
			 for(GoodsEntity g : shop){
				 
				 if(gid.equals(String.valueOf(g.getCid()))){
					 
					 if("plus".equals(type)){
						 
						 g.setGoodsnumber(g.getGoodsnumber()+1);
						 
						cart.add(g.getCid());
						 
					 }else{
						 
						 if(g.getGoodsnumber() > 1){
							 
							 g.setGoodsnumber(g.getGoodsnumber()-1);
							 
							 cart.remove(new Integer(gid));
						 }
						 
					 }
					 count = g.getGoodsnumber();
					 break;
				 }
				 
			 }
			 
			 ServletActionContext.getRequest().getSession().setAttribute("cart", cart);
			 ServletActionContext.getRequest().getSession().setAttribute("shop", shop);
			 
			 PrintWriter out;
			try {
				out = ServletActionContext.getResponse().getWriter();
				out.print(count);
				out.flush();
				out.close();
			} catch (IOException e) {
				e.printStackTrace();
			}
			 
			 return "cartpage";
		 }else if("delete".equals(method)){
			 
			 //��ȡ���ﳵ
			 List<GoodsEntity> shop = (List<GoodsEntity>)ServletActionContext.getRequest().getSession().getAttribute("shop");
			 
			 cart = (List<Integer>) ServletActionContext.getRequest().getSession().getAttribute("cart");
			 
			 String gid = ServletActionContext.getRequest().getParameter("gid");
			 
			 for(GoodsEntity ge : shop){
				 int car = ge.getCid();
				 List all = new ArrayList();
				 all.add(car);
					 if(gid.equals(String.valueOf(ge.getCid()))){				 
						 shop.remove(ge);
						 cart.removeAll(all);
						 break;
				 }
				 
			 }
			 
			 ServletActionContext.getRequest().getSession().setAttribute("cart",cart);
			 
			 ServletActionContext.getRequest().getSession().setAttribute("shop", shop);
			 
		 }
		
		return SUCCESS;
	}
	
}



















