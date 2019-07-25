package com.hfhj.mapper;

import java.util.List;

import com.hfhj.entity.SimInFormMap;
import com.hfhj.entity.SimOutFormMap;
import com.hfhj.mapper.base.BaseMapper;

public interface SimOutMapper extends BaseMapper {
	public List<SimOutFormMap> findSimOutPage(SimOutFormMap simoutFormMap);
}
