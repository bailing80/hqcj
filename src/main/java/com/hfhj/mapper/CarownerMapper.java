package com.hfhj.mapper;

import java.util.List;

import com.hfhj.entity.AbolishFormMap;
import com.hfhj.entity.CarownerFormMap;
import com.hfhj.mapper.base.BaseMapper;

public interface CarownerMapper extends BaseMapper {
	
	public CarownerFormMap EfindAccidentPage(int cid);
}
