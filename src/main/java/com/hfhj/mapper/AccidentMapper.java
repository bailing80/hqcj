package com.hfhj.mapper;

import java.util.List;

import com.hfhj.entity.AccidentFormMap;
import com.hfhj.entity.InsuranceFormMap;
import com.hfhj.mapper.base.BaseMapper;


public interface AccidentMapper extends BaseMapper{

	List<AccidentFormMap> findAccidentPage(AccidentFormMap accidentFormMap);
	/**
	 * 通过日期和车牌号查找事故信息
	 * @param accidentFormMap
	 * @return
	 */
	List<AccidentFormMap> findAccidentByDate(AccidentFormMap accidentFormMap);
}
