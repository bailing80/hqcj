package com.hfhj.mapper;

import java.util.List;

import com.hfhj.entity.AcquittanceFormMap;
import com.hfhj.mapper.base.BaseMapper;

public interface AcquittanceMapper extends BaseMapper{
	List<AcquittanceFormMap> findAqtByTime(String date);
}
