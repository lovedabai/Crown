package org.crown.mapper;

import org.apache.ibatis.annotations.Mapper;
import org.crown.model.Test;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;


@Mapper
public interface TestMapper extends BaseMapper<Test> {

}