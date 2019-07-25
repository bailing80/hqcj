package com.hfhj.controller.system;

import java.util.ArrayList;
import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.hfhj.controller.index.BaseController;
import com.hfhj.entity.DebtFormMap;
import com.hfhj.mapper.DebtMapper;
import com.hfhj.plugin.PageView;
import com.hfhj.util.Common;

/**
 * 2018/11/19 周结
 * 
 * @author lgm
 * 
 */
@Controller
@RequestMapping("/debt/")
public class DebtController extends BaseController {

	@Inject
	private DebtMapper debtMapper;

	@RequestMapping("list")
	public String listUI(Model model) throws Exception {
		model.addAttribute("res", findByRes());
		return Common.BACKGROUND_PATH + "/system/debt/list";
	}

	/**
	 * 
	 * @方法名:weeklyFindByPage
	 * @描述: 查询周欠款
	 * @作者:lgm
	 * @时间:2018-12-05 22:37:18
	 * @参数:@param pageNow
	 * @参数:@param pageSize
	 * @参数:@param column
	 * @参数:@param sort
	 * @参数:@return
	 * @参数:@throws Exception
	 * @返回值：PageView
	 */
	@ResponseBody
	@RequestMapping("weeklyFindByPage")
	// @Transactional(readOnly = false) // 需要事务操作必须加入此注解
	// @SystemLog(module = "系统管理", methods = "财务管理-生成周结列表") // 凡需要处理业务逻辑的.都需要记录操作日志
	public PageView weeklyFindByPage(String pageNow, String pageSize, String column, String sort) throws Exception {
		DebtFormMap weeklyFormMap = getFormMap(DebtFormMap.class);
		weeklyFormMap = toFormMap(weeklyFormMap, pageNow, pageSize, weeklyFormMap.getStr("orderby"));
		weeklyFormMap.put("column", column);
		weeklyFormMap.put("sort", sort);
		/* 将debt表中数据查询出来 */
		List<DebtFormMap> debtFormMap = debtMapper.findByPage(weeklyFormMap);
		List<DebtFormMap> debtFormMaps = new ArrayList<DebtFormMap>();
		for (DebtFormMap debtFormMap2 : debtFormMap) {
			/* 将获取到的收款区间，进行头尾相减，如果等于7则是周结欠款的 */
			String resummary = debtFormMap2.get("resummary").toString();
			// 2018-11-28~2018-12-04
			String strTime[] = resummary.split("~");

			String strTime0 = strTime[0].replace("-", "");
			String subTime0 = strTime0.substring(4, 6);
			String strTime1 = strTime[1].replace("-", "");
			String subTime1 = strTime1.substring(4, 6);
			int resummaryDate = Integer.parseInt(strTime0);
			int resummaryDate1 = Integer.parseInt(strTime1);
			if (!subTime0.equals(subTime1)) {
				debtFormMaps.add(debtFormMap2);

			} else if ((resummaryDate1 - resummaryDate) == 6) {
				debtFormMaps.add(debtFormMap2);
			}
		}
		pageView.setRecords(debtFormMaps);
		return pageView;

	}

	/**
	 * 
	 * @方法名:monthlyFindByPage
	 * @描述:查询月欠款
	 * @作者:lgm
	 * @时间:2018-12-05 22:37:53
	 * @参数:@param pageNow
	 * @参数:@param pageSize
	 * @参数:@param column
	 * @参数:@param sort
	 * @参数:@return
	 * @参数:@throws Exception
	 * @返回值：PageView
	 */
	@ResponseBody
	@RequestMapping("monthlyFindByPage")
	// @Transactional(readOnly = false) // 需要事务操作必须加入此注解
	// @SystemLog(module = "系统管理", methods = "财务管理-生成月结列表") // 凡需要处理业务逻辑的.都需要记录操作日志
	public PageView monthlyFindByPage(String pageNow, String pageSize, String column, String sort) throws Exception {

		DebtFormMap monthlyFormMap = getFormMap(DebtFormMap.class);
		monthlyFormMap = toFormMap(monthlyFormMap, pageNow, pageSize, monthlyFormMap.getStr("orderby"));
		monthlyFormMap.put("column", column);
		monthlyFormMap.put("sort", sort);
		/* 将debt表中数据查询出来 */
		List<DebtFormMap> debtFormMap = debtMapper.findByPage(monthlyFormMap);
		List<DebtFormMap> debtFormMaps = new ArrayList<DebtFormMap>();
		for (DebtFormMap debtFormMap2 : debtFormMap) {
			/* 将获取到的收款区间，进行头尾相减，如果等于7则是周结欠款的 */
			String resummary = debtFormMap2.get("resummary").toString();
			// 2018-11-28~2018-12-04
			String strTime[] = resummary.split("~");

			String strTime0 = strTime[0].replace("-", "");
			String subTime0 = strTime0.substring(4, 6);
			String strTime1 = strTime[1].replace("-", "");
			String subTime1 = strTime1.substring(4, 6);
			int resummaryDate = Integer.parseInt(strTime0);
			int resummaryDate1 = Integer.parseInt(strTime1);
			if (subTime0.equals(subTime1)) {
				if (resummaryDate1 - resummaryDate != 6) {
					debtFormMaps.add(debtFormMap2);
				}
			}
		}
		pageView.setRecords(debtFormMaps);
		return pageView;

	}

}
