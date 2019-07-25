package com.hfhj.mapper;

import com.hfhj.entity.EmployeeFormMap;
import com.hfhj.mapper.base.BaseMapper;
/**
 * 从业人员
 *
 */
public interface EmployeeMapper extends BaseMapper {
	
	EmployeeFormMap findEmployeeOneByCid(String cid);
	EmployeeFormMap findEmployeeTwoByCid(String cid);

}
