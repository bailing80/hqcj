package com.hfhj.mapper;

import java.util.List;

import com.hfhj.entity.EquipmentinFormMap;
import com.hfhj.entity.FixFormMap;
import com.hfhj.mapper.base.BaseMapper;

public interface FixMapper extends BaseMapper {
	
	public List<FixFormMap> findfixPage(FixFormMap fixFormMap);
}
