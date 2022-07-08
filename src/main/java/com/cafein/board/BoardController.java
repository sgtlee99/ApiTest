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
    @Autowired
    private BoardService boardService;
    @RequestMapping("/getBoardList")
    public String getBoardList(Model model, Board board) {
        List<Board> boardList = boardService.getBoardList(board);
        model.addAttribute("boardlist", boardList);
        return "/board/getBoardList";
    }


    /**
     * 글쓰기 화면
     * @return
     */
    @RequestMapping("/writeView")
    public String insertBoardView() {
        return "/board/write";
    }

    /**
     * 글쓰기 처리
     * @param board
     * @return
     */
    @RequestMapping("/insertBoard")
    public String insertBoard(Board board) {
        boardService.insertBoard(board);
        return "redirect:getBoardList";
    }


    @RequestMapping("/getBoard")
    public String getBoard(Board board, Model model) {
        model.addAttribute("board", boardService.getBoard((board)));
        return "getBoard";
    }

    @RequestMapping("/updateBoard")
    public String updateBoard(Board board) {
        boardService.updateBoard(board);
        return "forward:getBoardList";
    }

    @RequestMapping("/deleteBoard")
    public String deleteBoard(Board board) {
        boardService.deleteBoard(board);
        return "forward:getBoardList";
    }
}
