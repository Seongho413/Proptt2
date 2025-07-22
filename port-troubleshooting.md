# 포트 문제 해결 정리 (ProPTT2 실무 기준)

1. 증상 예시  
- ProPTT2 앱에서 서버 연결 실패 메시지가 발생함

2. 확인 순서

1) 서버가 켜져 있는지 확인  
ping 서버IP

2) 포트가 열려 있는지 확인  
서버에서: ss -tuln | grep 9000  
클라이언트에서: telnet 서버IP 9000

3) 방화벽 설정 확인  
firewall-cmd --list-ports  
포트가 없으면 열기  
firewall-cmd --add-port=9000/tcp --permanent  
firewall-cmd --reload

4) 서비스 상태 확인  
systemctl status proptt2.service  
(또는 실제 음성/중계 서비스의 프로세스 확인)

5) 포트 충돌 여부 확인  
lsof -i :9000  
(다른 서비스가 해당 포트를 점유 중일 수 있음)

3. 해결 예시

- 방화벽이 막고 있었다면: 포트를 열고 reload  
- 서비스가 꺼져 있었다면: systemctl start 서비스명  
- 포트 충돌이라면: 사용 중인 포트 변경하거나 충돌 서비스 종료
