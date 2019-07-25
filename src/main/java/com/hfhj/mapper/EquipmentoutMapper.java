package com.hfhj.mapper;

import java.util.List;

import com.hfhj.entity.EquipmentinFormMap;
import com.hfhj.entity.EquipmentoutFormMap;
import com.hfhj.mapper.base.BaseMapper;


public interface EquipmentoutMapper extends BaseMapper{

	public List<EquipmentoutFormMap> findEquipmentoutPage(EquipmentoutFormMap equipmentoutFormMap);
}
