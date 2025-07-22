## ✅ 1. 방화벽 상태 확인

firewall-cmd --state  
(출력: running 이면 방화벽 작동 중)

---

## ✅ 2. 현재 열려 있는 포트 확인

firewall-cmd --list-ports

---

## ✅ 3. 새 포트 열기 (예: 9000번 TCP)

firewall-cmd --add-port=9000/tcp --permanent  
→ --permanent는 재부팅 후에도 유지  
→ 생략하면 임시 적용

---

## ✅ 4. 방화벽 적용 (reload)

firewall-cmd --reload

---

## ✅ 5. 포트 열린 상태 확인

firewall-cmd --list-ports

---

## ✅ 6. 서비스 이름으로 열기 (http, ssh 등)

firewall-cmd --add-service=http --permanent  
firewall-cmd --add-service=ssh --permanent  
firewall-cmd --reload

---

## ⚠️ 7. 방화벽 완전 끄기 (실무 비추천)

systemctl stop firewalld  
systemctl disable firewalld  
※ 테스트 외 사용 금지

---

## 📌 명령어 요약 정리

- 상태 확인: firewall-cmd --state  
- 포트 확인: firewall-cmd --list-ports  
- 포트 열기: firewall-cmd --add-port=9000/tcp --permanent  
- 서비스 열기: firewall-cmd --add-service=http --permanent  
- 적용하기: firewall-cmd --reload  
- 방화벽 끄기: systemctl stop firewalld
