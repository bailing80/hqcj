package com.hfhj.mapper;

import java.util.List;

import com.hfhj.entity.ReceiptFormMap;
import com.hfhj.mapper.base.BaseMapper;

public interface ReceiptMapper extends BaseMapper {
	
	List<ReceiptFormMap> findRecriptByTime(String date);
	List<ReceiptFormMap> findRecriptByTAM(String date);
	
}
