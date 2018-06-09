package com.huamu668.demo.service;

import com.huamu668.demo.domain.Tree;

import java.util.List;

public interface ITreeService {
    List<Tree> getAll();

    Tree getByName(String name);
}
