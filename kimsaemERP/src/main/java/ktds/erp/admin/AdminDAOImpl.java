package ktds.erp.admin;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import ktds.erp.emp.MemberDTO;
@Repository
public class AdminDAOImpl implements AdminDAO {
	@Autowired
	SqlSession sqlSession;
	@Override
	public List<MemberDTO> getMemberList() {
		return sqlSession.selectList("ktds.erp.emp.selectAll");
	}
	@Override
	public List<MemberDTO> getCheckList(ArrayList<String> idlist) {
		//매개변수로 전달받은 idlist에 저장된 모든 id를 List<MemberDTO>로 조회할 수 있도록 작성하세요
		return null;
	}
	@Override
	public int update(List<MemberDTO> userlist) {
		//매개변수로 전달받은 userlist에 저장된 dto의 password를 update할 수 있도록 작성하세요
		return 0;
	}

}