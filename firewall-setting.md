포트 열기	firewall-cmd --add-port=9000/tcp --permanent
설정 적용	firewall-cmd --reload
현재 포트 확인	firewall-cmd --list-ports
방화벽 상태	firewall-cmd --state
방화벽 끄기	systemctl stop firewalld

firewall-cmd --state
# 결과: running 이면 방화벽 작동 중
✅ 2. 현재 열려 있는 포트 확인
bash
복사
편집
firewall-cmd --list-ports
✅ 3. 새 포트 열기 (예: 9000번 TCP)
bash
복사
편집
firewall-cmd --add-port=9000/tcp --permanent
--permanent: 재부팅 후에도 유지됨

생략 시 임시 적용 (다시 부팅하면 사라짐)

✅ 4. 방화벽 설정 적용 (변경사항 반영)
bash
복사
편집
firewall-cmd --reload
✅ 5. 포트가 열렸는지 확인
bash
복사
편집
firewall-cmd --list-ports
✅ 6. 서비스 이름으로 열기 (HTTP, SSH 등)
bash
복사
편집
firewall-cmd --add-service=http --permanent
firewall-cmd --add-service=ssh --permanent
firewall-cmd --reload
❗ 7. 방화벽 완전 끄기 (테스트용만, 실무에서는 위험)
bash
복사
편집
systemctl stop firewalld
systemctl disable firewalld
⚠️ 주의: 외부 접근이 완전히 가능해져서 보안상 매우 위험

📌 자주 쓰는 명령어 요약
