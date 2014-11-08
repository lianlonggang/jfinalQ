package com.uikoo9.fore.controller;

import com.jfinal.aop.Before;
import com.uikoo9.manage.pro.model.ProDetailModel;
import com.uikoo9.util.jfinal.QController;
import com.uikoo9.util.jfinal.QControllerUrl;
import com.uikoo9.util.jfinal.QJfinalUtil;
import com.uikoo9.z.interceptor.ProDetailsInterceptor;
import com.uikoo9.z.interceptor.ProMenusInterceptor;

@QControllerUrl("/home")
public class HomeController extends QController{
	
	/**
	 * 未登录跳转
	 */
	@Before({ProMenusInterceptor.class,ProDetailsInterceptor.class})
	public void index(){
		render("/WEB-INF/view/fore/home-index.ftl");
	}
	
	@Before(ProMenusInterceptor.class)
	public void project(){
		try {
			Integer id = getParaToInt(0);
			if(id != null){
				ProDetailModel detail = ProDetailModel.dao.findById(id); 
				if(detail != null){
					setAttr("detail", detail);	
					render("/WEB-INF/view/fore/home-project.ftl");
					return;
				}
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		redirect(QJfinalUtil.url("/"));
	}
	
}