package com.cafein.board;

import com.cafein.board.service.BoardService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;
import java.util.*;

@Controller
public class BoardController {
    @Autowired
    private BoardService boardService;

    /**
     * 게시판 목록 테스트용 샘플
     *
     * @param model
     * @return
     */
    @RequestMapping("/testBoardList")
    public String testBoardList(Model model) {
        List<Board> boardList = new ArrayList<Board>();

        // 임시로 게시물 10개를 만들자
        for (int i = 0; i < 9; i++) {
            Board board = new Board();
            board.setSeq(new Long(i));
            board.setTitle("제목   " + i);
            board.setWriter("작성자 " + i);
            board.setContent("글내용  " + i);
            board.setCreateDate(new Date());
            board.setCnt(0L);
            boardList.add(board);
        }
        model.addAttribute("boardList", boardList);
        return "testBoardList"; // jsp 파일 이름
    }

    /**
     * 게시판 목록
     *
     * @param model
     * @param board
     * @return
     */
    @RequestMapping("/getBoardList")
    public String getBoardList(Model model, Board board) {
        List<Board> boardList = boardService.getBoardList(board);
        model.addAttribute("boardList", boardList);
        return "getBoardList";

    }

    /**
     * 글쓰기 화면
     *
     * @return
     */
    @RequestMapping("/insertBoardView")
    public String insertBoardView() {
        return "insertBoard";
    }

    /**
     * 글쓰기 처리
     *
     * @param board
     * @return
     */
    @RequestMapping("/insertBoard")
    public String insertBoard(Board board) {
        boardService.insertBoard(board);
        return "redirect:getBoardList";
    }

    /**
     * 상세 글 화면/처리
     *
     * @param board
     * @param model
     * @return
     */
    @RequestMapping("/getBoard")
    public String getBoard(Board board, Model model) {
        model.addAttribute("board", boardService.getBoard((board)));
        return "getBoard";
    }

    /**
     * 글 수정 처리 후 목록으로 이동
     *
     * @param board
     * @return
     */
    @RequestMapping("/updateBoard")
    public String updateBoard(Board board) {
        boardService.updateBoard(board);
        return "forward:getBoardList";
    }

    /**
     * 글 삭제 처리 후 목록으로 이동
     * @param board
     * @return
     */
    @RequestMapping("/deleteBoard")
    public String deleteBoard(Board board) {
        boardService.deleteBoard(board);
        return "forward:getBoardList";
    }

}
