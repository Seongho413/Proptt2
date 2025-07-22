자주 사용하는 리눅스 명령어 정리

파일 및 디렉토리 관련

- ls : 현재 위치의 파일 목록 출력  
- cd 디렉토리명 : 해당 폴더로 이동  
- pwd : 현재 작업 디렉토리 경로 표시  
- mkdir 폴더명 : 새 디렉토리 생성  
- rm -r 폴더명 : 디렉토리 삭제

시스템 정보 확인

- top : 실시간 CPU, 메모리 사용량 확인  
- df -h : 디스크 사용량 확인  
- free -h : 메모리 사용량 확인  
- uname -a : 커널 및 시스템 정보 출력

서비스 및 프로세스

- systemctl status 서비스명 : 서비스 상태 확인  
- systemctl start/stop/restart 서비스명 : 서비스 시작/중지/재시작  
- ps aux : 전체 프로세스 목록 보기  
- kill PID : 프로세스 종료

네트워크 및 포트

- ping 도메인/IP : 연결 확인  
- netstat -tuln : 열려 있는 포트 보기  
- ss -tuln : 더 빠른 포트 상태 확인  
- curl 주소 : HTTP 요청 테스트  
- ip a : 현재 IP 확인
