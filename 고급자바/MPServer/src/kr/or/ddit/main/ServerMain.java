package kr.or.ddit.main;

import java.rmi.RemoteException;
import java.rmi.registry.LocateRegistry;
import java.rmi.registry.Registry;

import kr.or.ddit.member.service.IMemberService;
import kr.or.ddit.member.service.MemberServiceImpl;

public class ServerMain {
	
	public static void main(String[] args) {
		
		try {
			
			Registry reg = LocateRegistry.createRegistry(8888); // 레지스트리 생성, 포트번호 8888
			// 레지스트리를 포트번호 8888로 하나 열었다.
			
			IMemberService memberService = MemberServiceImpl.getInstance();
			// 만들어진객체
			
			reg.rebind("memberService",memberService); // memberService 를 레지스트리에 등록.
			//만들어진객체를 rebind 로 등록해준다.
			// 게시판이 늘때마다 rebind가 늘어날것이다.
			// 서비스에서는 lookup으로? 찾아나설것임.
			
		} catch (RemoteException e) {
			e.printStackTrace();
		}
		
		System.out.println("서버 준비 완료");
		
	}
}
