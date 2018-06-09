package com.huamu668.demo.mapper;

import com.huamu668.demo.domain.Tree;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface TreeMapper {
    int deleteByPrimaryKey(Long id);

    int insert(Tree record);

    Tree selectByPrimaryKey(Long id);

    List<Tree> selectAll();

    int updateByPrimaryKey(Tree record);

    Tree selectByName(@Param("name") String name);
}