package com.hfhj.util;

import java.util.Map;

import org.apache.shiro.SecurityUtils;
import org.apache.shiro.session.Session;

/**
 * 取本次登录用户的姓名
 * @author CXK
 * @date 2018年12月7日
 */
public class UserNameUtil {
	/**
	 * 从session里取本次用户登录的姓名
	 * @return
	 */
	public static String getUserName() {
		Session session = SecurityUtils.getSubject().getSession();
		Map<String, String> map = (Map<String, String>) session.getAttribute("userSession");
		System.err.println("mapmap++++"+map.get("userName")+"sadas");
//		if ("".equals(map.get("userName"))) {
			return map.get("userName");
//		}else {
//			return "";
//		}
	}
}
