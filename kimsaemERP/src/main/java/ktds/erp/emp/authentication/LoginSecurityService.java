package ktds.erp.emp.authentication;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import ktds.erp.emp.EmpDAO;
import ktds.erp.emp.LoginDTO;
import ktds.erp.emp.MemberDTO;


@Service
//로그인 인증 작업을 처리하는 서비스 클래스 - Spring security의 클래스(implements UserDetailsService 하기)
public class LoginSecurityService implements UserDetailsService {
	@Autowired
	EmpDAO dao;

	@Autowired
	@Qualifier("autho")
	AuthorityDAO authoDao;

	// dao의 메소드를 이용해서 입력받은 아이디에 해당하는 레코드가 있는지 확인한 후 조회한 사용자 정보를 UserDetails를 변환해서
	// 리턴하는 메소드
	// <security:user-service>작업
	@Override
	public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
		System.out.println(username);
		LoginDTO loginUser = dao.findbyId(username);
		System.out.println(loginUser);

		// db에서 조회한 MemberDTO를 UserDetails타입으로 변환해서 리턴
		// ==>변환해서 리턴하지 않고 UserDetails을 상속하는 DTO를 직접 만들어서 작업해도 좋다.
		// ==>UserDetails을 구현하고 있는 User객체를 만들어서 리턴한다
		// 1. User클래스는 id, password, 권한리스트를 매개변수로 받고 있으며 권한리스트는 여러개가 될 수 있으므로 ArrayList에
		// 담아서 리턴
		// 2. ArrayList에 담는 권한 정보는 GrantedAuthority 객체타입이어야 하고 GrantedAuthority는 인터페이스
		// 이므로 이 인터페이스를
		// 구현하는 SimpleGrantedAuthority객체를 생성해서 ArrayList에 추가한다.
		// 형식이 존재하는 이유는 내부에서 자동으로 처리하는 것이 있기 때문
		UserDetails securityLoginUser = null;
		ArrayList<GrantedAuthority> authorities = new ArrayList<GrantedAuthority>();

		// dao에서 조회한 user별 권한리스트를 이용해서 생성하기
		// authorities.add(new SimpleGrantedAuthority(loginUser.getAuthority()));
		List<MemberAuthoritysDTO> list = authoDao.getAuthorityList(username);
		// securityLoginUser = new User(loginUser.getId(), loginUser.getPass(),
		// authorities);
		for (int i = 0; i < list.size(); i++) {
			authorities.add(new SimpleGrantedAuthority(list.get(i).getAuthorityname()));
		}
		securityLoginUser = new SecurityLoginDTO(authorities, loginUser.getId(), loginUser.getPass(),
				loginUser.getName(), loginUser.getSsn(), loginUser.getBirthday(), loginUser.getMarry(), loginUser.getGender(),
				loginUser.getPosition(),loginUser.getDuty(), loginUser.getClasses(), loginUser.getStartday(), loginUser.getEndday(),
				loginUser.getDeptno(), loginUser.getCurstate(), loginUser.getZipcode(), loginUser.getAddr(), loginUser.getDetailaddr(),
				loginUser.getPhonehome(), loginUser.getPhoneco(), loginUser.getPhonecell(), loginUser.getEmail(),
				loginUser.getProfile_photo(), loginUser.getDeptname(), loginUser.getJob_category(), loginUser.getMenupath());
		//securityLoginUser = new User(loginUser.getId(), loginUser.getPass(), authorities);
		return securityLoginUser;
	}

}
