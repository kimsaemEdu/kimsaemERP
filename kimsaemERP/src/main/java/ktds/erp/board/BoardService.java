package ktds.erp.board;

import java.util.ArrayList;
import java.util.List;

public interface BoardService {
	// 게시판목록보기
	List<BoardDTO> boardList(String category);

	int txinsert(BoardDTO board);

	// 게시판 등록
	int insert(BoardDTO board, ArrayList<String> filelist);

	// List<BoardDTO> searchList(String search);
	List<BoardDTO> dynamicSearch(String tag, String search);

	List<BoardDTO> pageList();

	// 게시판상세보기
	BoardDTO read(String board_no);

	// 수정하기
	int update(BoardDTO board);

	// 삭제하기
	int delete(String board_no);

}
