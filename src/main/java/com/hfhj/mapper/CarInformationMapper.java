package com.hfhj.mapper;

import java.util.Map;

import com.hfhj.mapper.base.BaseMapper;

public interface CarInformationMapper extends BaseMapper {
	int updateCarBycPlateId(Map<String, Object> carFormMap);
}
