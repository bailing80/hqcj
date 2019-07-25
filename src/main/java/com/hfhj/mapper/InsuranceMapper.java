package com.hfhj.mapper;

import java.util.List;

import com.hfhj.entity.InsuranceFormMap;
import com.hfhj.entity.UserFormMap;
import com.hfhj.mapper.base.BaseMapper;

public interface InsuranceMapper extends BaseMapper{
	public List<InsuranceFormMap> findInsurancePage(InsuranceFormMap insuranceFormMap);
}
