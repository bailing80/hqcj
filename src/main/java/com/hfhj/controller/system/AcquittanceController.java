package com.hfhj.controller.system;

import java.util.Map;

import javax.inject.Inject;

import org.apache.shiro.SecurityUtils;
import org.apache.shiro.session.Session;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.hfhj.annotation.SystemLog;
import com.hfhj.controller.index.BaseController;
import com.hfhj.entity.AcquittanceFormMap;
import com.hfhj.mapper.AcquittanceMapper;
import com.hfhj.plugin.PageView;
import com.hfhj.util.Common;
import com.hfhj.util.UserNameUtil;

/**
 * 收据
 * @author CXK
 *
 */
@Controller
@RequestMapping("/acquittance/")
public class AcquittanceController extends BaseController {
	@Inject
	private AcquittanceMapper acquittanceMapper;

	@RequestMapping("list")
	public String listUI(Model model) throws Exception {
		// 从session里取本次用户登录的姓名
		model.addAttribute("userName", UserNameUtil.getUserName());
		
		model.addAttribute("res", findByRes());
		return Common.BACKGROUND_PATH + "/system/acquittance/list";
	}

	@ResponseBody
	@RequestMapping("findByPage")
	public PageView findByPage(String pageNow,
			String pageSize) throws Exception {
		AcquittanceFormMap acquittanceFormMap = getFormMap(AcquittanceFormMap.class);
		acquittanceFormMap=toFormMap(acquittanceFormMap, pageNow, pageSize,acquittanceFormMap.getStr("orderby"));
        pageView.setRecords(acquittanceMapper.findByPage(acquittanceFormMap));
		return pageView;
	}
	
	@RequestMapping("addUI")
	public String addUI(Model model) throws Exception {
		System.err.println("UserNameUtil.getUserName()"+UserNameUtil.getUserName()+"-----");
		model.addAttribute("userName", UserNameUtil.getUserName());
		
		System.err.println("modelmodelmodel"+model);
		return Common.BACKGROUND_PATH + "/system/acquittance/add";
	}
	
	@ResponseBody
	@RequestMapping("addEntity")
	@Transactional(readOnly=false)//需要事务操作必须加入此注解
	@SystemLog(module="财务管理",methods="收据管理-新增收据信息")//凡需要处理业务逻辑的.都需要记录操作日志
	public String addEntity() throws Exception {
		AcquittanceFormMap acquittanceFormMap = getFormMap(AcquittanceFormMap.class);
		acquittanceMapper.addEntity(acquittanceFormMap);
		return "success";
	}

	@RequestMapping("editUI")
	public String editUI(Model model) throws Exception {
		String id = getPara("id");
		System.out.println(id);
		if(Common.isNotEmpty(id)){
			model.addAttribute("acquittance", acquittanceMapper.findbyFrist("id", id, AcquittanceFormMap.class));
			model.addAttribute("userName", UserNameUtil.getUserName());
		}
		return Common.BACKGROUND_PATH + "/system/acquittance/edit";
	}
	
	@ResponseBody
	@RequestMapping("editEntity")
	@Transactional(readOnly=false)//需要事务操作必须加入此注解
	@SystemLog(module="财务管理",methods="收据管理-修改收据信息")//凡需要处理业务逻辑的.都需要记录操作日志
	public String editEntity() throws Exception {
		AcquittanceFormMap acquittanceFormMap = getFormMap(AcquittanceFormMap.class);
		acquittanceMapper.editEntity(acquittanceFormMap);
		return "success";
	}
	
	@ResponseBody
	@RequestMapping("deleteEntity")
	@Transactional(readOnly=false)//需要事务操作必须加入此注解
	@SystemLog(module="财务管理",methods="收据管理-删除收据信息")//凡需要处理业务逻辑的.都需要记录操作日志
	public String deleteEntity() throws Exception {
		String[] ids = getParaValues("ids");
		for (String id : ids) {
			acquittanceMapper.deleteByAttribute("id", id, AcquittanceFormMap.class);
		}
		return "success";
	}
	
}