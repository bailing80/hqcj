package com.hfhj.mapper;

import java.util.List;

import com.hfhj.entity.AbolishFormMap;
import com.hfhj.entity.InsuranceFormMap;
import com.hfhj.mapper.base.BaseMapper;


public interface AbolishMapper extends BaseMapper{

	public List<AbolishFormMap> findAbolishPage(AbolishFormMap abolishFormMap);
	public List<AbolishFormMap> EfindAbolishPage(AbolishFormMap abolishFormMap);
}
