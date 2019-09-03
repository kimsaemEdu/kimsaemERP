package ktds.erp.board;

import java.util.ArrayList;
import java.util.List;

public interface BoardDAO {
	// 게시판목록보기
	List<BoardDTO> boardList();

	// 게시판등록
	int insert(BoardDTO board);

	int fileInsert(ArrayList<String> filelist);

	List<BoardDTO> categorySearch(String category);

	List<BoardDTO> dynamicSearch(String tag, String search);

	List<BoardDTO> pageList();

	// 상세보기
	BoardDTO read(String board_no);

	// 업데이트
	int update(BoardDTO board);

	// 삭제
	int delete(String board_no);

}
