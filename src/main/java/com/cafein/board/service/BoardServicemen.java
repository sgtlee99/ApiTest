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

    /**
     * 글목록 조회
     * @param board
     * @return
     */
    @Override
    public List<Board> getBoardList(Board board) {
        return (List<Board>) boardRepository.findAll();
    }

    /**
     * 글쓰기 처리
     * @param board
     */

    @Override
    public void updateBoard(Board board) {

    }

    @Override
    public void deleteBoard(Board board) {

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

}
