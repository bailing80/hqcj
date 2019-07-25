package com.hfhj.mapper;

import java.util.List;

import com.hfhj.entity.AbolishFormMap;
import com.hfhj.entity.EquipmentinFormMap;
import com.hfhj.mapper.base.BaseMapper;


public interface EquipmentinMapper extends BaseMapper{

	public List<EquipmentinFormMap> findEquipmentinPage(EquipmentinFormMap equipmentinFormMap);
}
