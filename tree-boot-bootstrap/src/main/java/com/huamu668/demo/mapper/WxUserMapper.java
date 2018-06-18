package com.huamu668.demo.mapper;

import com.huamu668.demo.domain.WxUser;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface WxUserMapper {
    int deleteByPrimaryKey(Long id);

    int insert(WxUser record);

    WxUser selectByPrimaryKey(Long id);

    List<WxUser> selectAll();

    int updateByPrimaryKey(WxUser record);

    WxUser selectByOpenId(String openid);
}