package com.huamu668.demo.service.impl;

import com.huamu668.demo.domain.Tree;
import com.huamu668.demo.mapper.TreeMapper;
import com.huamu668.demo.service.ITreeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class TreeServiceImpl implements ITreeService {

    @Autowired
    private TreeMapper treeMapper;

    @Override
    public List<Tree> getAll() {
        return treeMapper.selectAll();
    }

    @Override
    public Tree getByName(String name) {
        return treeMapper.selectByName(name);
    }

    @Override
    public Tree getByPinyinName(String pinyinName) {
        return treeMapper.selectByPinyinName(pinyinName);
    }
}
