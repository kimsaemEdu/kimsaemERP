package ktds.erp.emp;

import java.util.ArrayList;
import java.util.List;

import ktds.erp.emp.authentication.AuthorityDTO;

public interface EmpDAO {
	ArrayList<MemberDTO> getTreeEmpList(String deptno);

	int insert(MemberDTO user);

	ArrayList<MemberDTO> getMemberList();

	int delete(String id);

	MemberDTO read(String id);

	ArrayList<MemberDTO> search(String column, String search, String pass);

	int update(MemberDTO user);

	LoginDTO login(MemberDTO loginUser);

	boolean idCheck(String id);

	MemberDTO findbyId(String id);

	List<AuthorityDTO> findByGroup(String id);

}
