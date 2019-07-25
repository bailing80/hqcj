package com.hfhj.mapper;

import java.util.List;

import com.hfhj.entity.SimFormMap;
import com.hfhj.entity.SimInFormMap;
import com.hfhj.mapper.base.BaseMapper;

public interface SimInMapper extends BaseMapper {
	public List<SimInFormMap> findSimInPage(SimInFormMap siminFormMap);
}
