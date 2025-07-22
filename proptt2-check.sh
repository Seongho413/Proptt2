#!/bin/bash

echo "====== ProPTT2 상태 점검 시작 ======"

# 서비스 상태 확인
echo -e "\n[1] ProPTT2 서비스 상태:"
systemctl status proptt2.service | head -n 10

# 서버 현재 시간
echo -e "\n[2] 서버 현재 시간:"
date

# 서버 IP 확인
echo -e "\n[3] 서버 IP 주소:"
ip a | grep inet | grep -v 127.0.0.1

# 열려 있는 포트 확인
echo -e "\n[4] 방화벽에서 열려 있는 포트:"
firewall-cmd --list-ports

# 디스크 사용량 확인
echo -e "\n[5] 디스크 사용량:"
df -h

# 메모리 사용량 확인
echo -e "\n[6] 메모리 사용량:"
free -h

echo -e "\n====== 상태 점검 완료 ======"
