package com.hfhj.mapper;

import com.hfhj.entity.DebtFormMap;
import com.hfhj.mapper.base.BaseMapper;


public interface DebtMapper extends BaseMapper{
	
	
	/**
	 * 删除欠款表的某条数据
	 * @param debtFormMap
	 * @return
	 */
	int deleteDebt(DebtFormMap debtFormMap);

}
