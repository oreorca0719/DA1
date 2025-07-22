#!/bin/bash

echo "🚀 GitHub 저장소 생성 후 자동 push 스크립트"
echo "=============================================="

# 현재 디렉토리 확인
echo "📁 현재 디렉토리: $(pwd)"

# git 상태 확인
echo "📋 Git 상태 확인:"
git status --porcelain

# remote 확인
echo "🔗 Remote 설정 확인:"
git remote -v

# push 실행
echo "⬆️ GitHub에 push 중..."
echo "만약 인증이 필요하면 GitHub 사용자명과 Personal Access Token을 입력하세요."
echo "(패스워드 대신 Personal Access Token 사용)"

git push -u origin main

if [ $? -eq 0 ]; then
    echo "✅ 성공적으로 push가 완료되었습니다!"
    echo "🌐 저장소 확인: https://github.com/oreorca0719/DA1"
else
    echo "❌ Push에 실패했습니다."
    echo ""
    echo "💡 해결 방법:"
    echo "1. GitHub에서 저장소가 정상적으로 생성되었는지 확인"
    echo "2. GitHub Personal Access Token이 올바른지 확인"
    echo "3. 저장소 이름이 'DA1'이 맞는지 확인"
    echo ""
    echo "🔧 Personal Access Token 생성 방법:"
    echo "   GitHub > Settings > Developer settings > Personal access tokens > Generate new token"
    echo "   권한: repo (전체 선택)"
fi
