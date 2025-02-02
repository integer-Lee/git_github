# github 인증방법 2가지
# 1. oauth 인증방식(제3자인증-웹로그인)
# 2. pat token 인증방식 : github에서 직접 보안키 발급
# 발급한 키를 자격증명에 등록해주었다.

# git 프로젝트 생성방법 2가지
# 방법1. github에서 진행중인 원격 repo를 clone하는 방법
# 방법2. 로컬에서부터 이미 진행중인 프로젝트를 github에 업로드하는 방법
# 해당 프로젝트 위치에 .git폴더(repo주소와 사용자 정보 등이 들어있음)가 생성
git init
#원격지 주소를 생성 및 추가
git remote add origin 레포주소
# 원격지 주소를 삭제하는 명령어
git remote remove origin
#원격지 주소를 변경하는 명령어
git remote set-url origin 레포주소
#git 설정정보 조회
git config --list

#타인의 레포를 clone받는 방법 2가지
# 1. 커밋이력 그대로 가져오기
git clone 타인레포주소
#해당 폴더로 이동 후 github 레포주소 변경
git remote set-url origin 나의레포주소
git push origin main

# 2. 커밋이력 없이 레포 가져오기
git clone 타인레포주소
# 해당 폴더 안으로 이동후 .git폴더 삭제
git init
git remote add origin 나의레포주소
git add .
git commit -m "first"
git push origin master