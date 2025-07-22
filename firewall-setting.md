방화벽 설정 정리 (CentOS / RHEL / Rocky Linux 기준)

ProPTT2 서버 운영 시 자주 사용하는 포트 개방 및 방화벽 설정 명령어를 정리한 매뉴얼입니다.

1. 방화벽 상태 확인

firewall-cmd --state  
출력: running (방화벽 작동 중)

2. 현재 열려 있는 포트 목록 확인

firewall-cmd --list-ports

3. 새 포트 열기 (예: 9000번 포트, TCP)

firewall-cmd --add-port=9000/tcp --permanent  
--permanent : 영구 적용 (서버 재부팅 후에도 유지)  
생략 시 임시 적용

4. 변경 사항 적용 (reload)

firewall-cmd --reload

5. 포트가 정상적으로 열렸는지 확인

firewall-cmd --list-ports

6. 서비스 이름으로 열기 (HTTP, SSH 등)

firewall-cmd --add-service=http --permanent  
firewall-cmd --add-service=ssh --permanent  
firewall-cmd --reload

7. 방화벽 완전히 끄는 명령어 (테스트용 외 사용 금지)

systemctl stop firewalld  
systemctl disable firewalld

주의: 실제 운영 환경에서는 절대 사용 금지 (보안상 매우 위험)

자주 사용하는 명령어 요약

- 방화벽 상태 확인: firewall-cmd --state  
- 열려 있는 포트 확인: firewall-cmd --list-ports  
- 포트 열기: firewall-cmd --add-port=9000/tcp --permanent  
- 서비스 열기: firewall-cmd --add-service=http --permanent  
- 변경 적용: firewall-cmd --reload  
- 방화벽 끄기: systemctl stop firewalld
