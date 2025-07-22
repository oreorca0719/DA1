#!/bin/bash

echo "🚀 GitHub 저장소 연결 스크립트"
echo "=================================="

# 사용자 입력 받기
echo "GitHub 사용자명을 입력하세요:"
read username

echo "저장소 이름을 입력하세요 (기본값: DA1):"
read repo_name
repo_name=${repo_name:-DA1}

# remote 추가
echo "🔗 remote origin 추가 중..."
git remote add origin "https://github.com/$username/$repo_name.git"

# remote 확인
echo "📋 설정된 remote 확인:"
git remote -v

# push 실행
echo "⬆️ GitHub에 push 중..."
git push -u origin main

echo "✅ 완료! GitHub에서 저장소를 확인해보세요."
echo "🌐 저장소 URL: https://github.com/$username/$repo_name"
