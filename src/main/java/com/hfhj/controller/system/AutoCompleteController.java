package com.hfhj.controller.system;

import java.util.ArrayList;
import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.hfhj.controller.index.BaseController;
import com.hfhj.entity.CarFormMap;
import com.hfhj.entity.CarownerFormMap;
import com.hfhj.mapper.CarErrorMapper;
import com.hfhj.mapper.CarMapper;

@Controller
@RequestMapping("/autocomplete/")
public class AutoCompleteController extends BaseController {
	
	@Inject
	private CarErrorMapper carErrorMapper;
	@Inject
	private CarMapper carMapper;
	
	/**
	 * 
	 * 查询出所有的车牌号，不包括 故障车  问题车
	 * @param model
	 * @return
	 * @throws Exception
	 */
	@ResponseBody
	@RequestMapping("carplateid")
	public List<String> carplateid(Model model) throws Exception {
		CarFormMap carFormMap = getFormMap(CarFormMap.class);
		carFormMap.put("where", "where ciserror = 1 and issave = 1 and cisabolish = 1");
		List<CarFormMap> carErrorList = carMapper.findByWhere(carFormMap);
		//System.out.println("+++++++++++++++++++" + carErrorList.size());
		List<String> list = new ArrayList<String>();
		for (CarFormMap map : carErrorList) {
			String value=map.get("cplateid").toString();
			list.add(value);
		}
		System.out.println("+++自动补全的动态代码元素++"+list.toString());
		return list;
	}
	
	/**
	 * 参数：cplateid
	 * 用车牌照号查询车主  返回车主信息
	 * @param model
	 * @return
	 * @throws Exception
	 */
	@ResponseBody
	@RequestMapping("carAndOwner")
	public CarownerFormMap carAndOwner(Model model) throws Exception {
		String cplateid=getPara("cplateid");//接收参数 cplateid
		System.out.println("++++selectcarowner+++"+cplateid);
		CarFormMap carFormMap=new CarFormMap();
		carFormMap = carMapper.findbyFrist("cplateid",cplateid,CarFormMap.class);
		System.out.println("车辆的id "+carFormMap.get("id"));
		
		CarownerFormMap carownerFormMap1 = new CarownerFormMap();
		CarownerFormMap carownerFormMap2 = carownerMapper.findbyFrist("cid", carFormMap.get("id").toString(),CarownerFormMap.class);
		System.out.println("carownerFormMapcarownerFormMap"+carownerFormMap2);
		
		if (carownerFormMap2!=null) {
			carownerFormMap1.putAll(carownerFormMap2);
			carownerFormMap1.put("message", "success");
		}else {
			carownerFormMap1.put("message", "error");
		}
		return carownerFormMap1;
		
	}
	
	/**
	 * 
	 * 将车牌号转化成车id   cplateid  to   cid
	 * @param model
	 * @return
	 * @throws Exception
	 */
	@ResponseBody
	@RequestMapping("cplateidToCid")
	public String cplateidToCid(Model model) throws Exception {
		String cplateid=getPara("cplateid");
		System.out.println("+++++车牌照号+++++"+cplateid);
		CarFormMap carFormMap=new CarFormMap();
		carFormMap=carMapper.findbyFrist("cplateid", cplateid, CarFormMap.class);
		System.out.println("++cplateidToCid+++"+carFormMap);
		if (carFormMap != null) {
			return carFormMap.get("id").toString();
		} else {
			return "error";
		}
		
	}
	
}
