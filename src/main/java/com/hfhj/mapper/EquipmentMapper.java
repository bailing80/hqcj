package com.hfhj.mapper;

import java.util.List;

import com.hfhj.entity.EquipmentFormMap;
import com.hfhj.entity.EquipmentinFormMap;
import com.hfhj.entity.UserFormMap;
import com.hfhj.mapper.base.BaseMapper;


public interface EquipmentMapper extends BaseMapper{
	public List<EquipmentFormMap> findEquipmentPage(EquipmentFormMap equipmentFormMap);
	public List<EquipmentFormMap> findEquipmentPagein(EquipmentFormMap equipmentFormMap);//当标识符为1(正常)的时候，查出来的sql语句
	public List<EquipmentFormMap> findEquipmentPageout(EquipmentFormMap equipmentForMap);//当标识符为2(出库)的时候，查出来的sql语句
	

	
}
