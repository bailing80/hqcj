package com.hfhj.mapper;

import java.util.List;

import com.hfhj.entity.DictionaryFormMap;
import com.hfhj.mapper.base.BaseMapper;

public interface DictionaryMapper extends BaseMapper{
	List<DictionaryFormMap> selectDictionaryById();
}
