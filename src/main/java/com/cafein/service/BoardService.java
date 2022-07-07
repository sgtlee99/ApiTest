package com.cafein.service;


import com.cafein.domain.Board;
import com.cafein.mapper.BoardMapper;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
@RequiredArgsConstructor
@Transactional(readOnly = true)
public class BoardService {

    private final BoardMapper boardMapper;

    public int boardCount() {
        return boardMapper.boardCount();
    }
    public List<Board> boardList() {
        return boardMapper.getList();
    }
}
