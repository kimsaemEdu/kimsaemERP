package ktds.erp.emp.authentication;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.AuthenticationProvider;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.authentication.encoding.ShaPasswordEncoder;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.AuthenticationException;
import org.springframework.security.core.userdetails.UserDetailsService;

public class CustomAuthenticationProvider implements AuthenticationProvider{
	@Autowired
	UserDetailsService securityService;
	@Autowired
	ShaPasswordEncoder shaPassowrdEncoder;
	
	//로그인버튼을 눌렀을 때 호출되는 메소드
	@Override
	public Authentication authenticate(Authentication data) throws AuthenticationException {
		//provider는 사용자가 입력한 정보를 가져와 DB와 비교한다
		//authenticate 인증 작업을 하는 
		//data는 로그인에서 입력된 정보로 가져온 데이터
		System.out.println("CustomAuthenticationProvider : "+data);
		//사용자 정보 출력하기
		String id = data.getName();
		String pass = (String) data.getCredentials();
		Object principal = data.getPrincipal(); //인증된 사용자 정보
		System.out.println(id+","+pass+","+principal);
		
		//UserDetailsService의 LoginSecurityService을 호출하여 
		//DB에서 조회한 데이터와 이늦ㅇ할 수 있도록 한다.
		SecurityLoginDTO loginUser = (SecurityLoginDTO) securityService.loadUserByUsername(id);
		System.out.println("provider : "+loginUser);
		
		//DB에서 조회한 데이터와 입력한 데이터를 비교
		//isPasswordValid는 암호화된 데이터와 입력데이터를 비교
		
		boolean state = shaPassowrdEncoder.isPasswordValid(loginUser.getPass(), pass, loginUser.getId());
		System.out.println("패스워드 비교 : "+state);
		//인증결과를 리턴 - UsernamePasswordAuthenticationToken으로 리턴
		UsernamePasswordAuthenticationToken token = null;
		if(state) {
			token = new UsernamePasswordAuthenticationToken(loginUser, pass, loginUser.getAuthorities());
		}
		else {
			System.out.println("로그인 실패");
		}
		return token;
	}
	
	//로그인 아이디와 패스워드를 이용해서 인증하려면 supports가 true를 리턴여야 한다.
	//supports -> Authentication순으로 실행되며 
	@Override
	public boolean supports(Class<?> arg0) {
		return true;
	}

}
