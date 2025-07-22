# 포트 문제 해결 정리 (ProPTT2 실무 기준)

## 1. 증상
- ProPTT2 앱에서 "서버 연결 실패" 메시지 발생

## 2. 확인 순서

1. **서버가 켜져 있는지 확인**
   - `ping 서버IP`

2. **포트가 열려 있는지 확인**
   - 서버에서: `ss -tuln | grep 9000`
   - 클라이언트에서: `telnet 서버IP 9000`

3. **방화벽 설정 확인**
   - `firewall-cmd --list-ports`  
   - 없으면 열기:  
     `firewall-cmd --add-port=9000/tcp --permanent && firewall-cmd --reload`

4. **서비스 실행 여부 확인**
   - `systemctl status proptt2.service` 또는 서버 내 음성 중계 서비스 확인

5. **포트 충돌 여부**
   - 같은 포트를 쓰는 다른 서비스가 있는지 확인:  
     `lsof -i :9000`

## 3. 해결
- 포트가 막혀 있었던 경우 → 방화벽에서 허용  
- 서비스가 꺼져 있었던 경우 → `systemctl start 서비스명`
