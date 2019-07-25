package com.hfhj.entity;

import java.util.List;

import com.hfhj.annotation.TableSeg;
import com.hfhj.util.FormMap;



/**
 * 实体表
 */
@TableSeg(tableName = "dictionary", id="id")
public class DictionaryFormMap extends FormMap<String,Object>{

	/**
	 *@descript
	 *@author lanyuan
	 *@date 2015年3月29日
	 *@version 1.0
	 */
	private static final long serialVersionUID = 1L;
	
	private List<DictionarysonFormMap> dictionarysonFormMapList;

}
