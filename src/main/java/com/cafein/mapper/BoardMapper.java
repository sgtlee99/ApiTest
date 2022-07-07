package com.cafein.mapper;

import com.cafein.domain.Board;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface BoardMapper {
    int boardCount();
    List<Board> getList();
}
