package com.cafein.board.service;

import com.cafein.board.Board;
import com.cafein.board.repository.BoardRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class BoardServicemen implements BoardService{
    @Autowired
    private BoardRepository boardRepository;

    @Override
    public List<Board> getBoardList(Board board) {
        return (List<Board>) boardRepository.findAll();
    }

    @Override
    public void insertBoard(Board board) {
        // jpa 사용시 별도 쿼리 작성 필요없이..
        // 아래 한줄 추가로 DB에 데이터가 저장되었다.
        boardRepository.save(board);
    }
    @Override
    public Board getBoard(Board board) {

        // 조회수 처리
        Board findBoard = boardRepository.findById(board.getSeq()).get();
        findBoard.setCnt(findBoard.getCnt()+1);
        boardRepository.save(findBoard);

        return findBoard;
    }

    @Override
    public void updateBoard(Board board) {
        // 수정 대상 글을 가져온다.
        Board findBoard = boardRepository.findById(board.getSeq()).get();

        // 가져온 글에 수정한 내용을 세팅한다.
        findBoard.setTitle(board.getTitle());
        findBoard.setContent(board.getContent());

        // DB에 저장
        boardRepository.save(findBoard);
    }
    @Override
    public void deleteBoard(Board board) {
        boardRepository.deleteById(board.getSeq());
    }
}
