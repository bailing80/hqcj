package com.hfhj.mapper;

import com.hfhj.entity.ChargesonFormMap;
import com.hfhj.mapper.base.BaseMapper;


public interface ChargesonMapper extends BaseMapper{
	
	/**
	 * 只是修改收费项的标识，修改是否已收，除日租金
	 * @param chargesonFormMap
	 * @return
	 */
	int editChargesonIsrec(ChargesonFormMap chargesonFormMap);
}
