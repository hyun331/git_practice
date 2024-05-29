# 0529dddd
# git add . 은 모든 변경사항 staging area로 이동
git add .
test
# git commit은 staging area의 변경사항을 확정짓고 commitID 생성
git commit -m "메세지"

# 원격 repo에 업로드. origin은 원격을 의미
git push origin branch명

# github 인증방법 2가지 
# 우선 인증 끊기 : setting->applications->authorized oauth apps-> git credential, vscode revoke시키기
# 1. token 인증방식 : github에서 직접 보안키(token) 발급

# 2. 제3자인증방식(oauth)
# window -> clone git repository... (우리가 여태 했던 방법. 처음에 했을 때 인증했음)


# git 프로젝트 생성방법 2가지
# 방법1. 원격 repo 생성 후 clone
# 방법2. 로컬에서부터 이미 개발된 프로젝트가 존재시에 github 업로드

#  방법 2. 해당 프로젝트 경로에 .git  폴더 생성
git init
# 원격지 주소를 생성 및 추가 , 정말 많이 사용하는 것.
git remote add origin <레포주소>
git remote add origin https://github.com/Windowmincastle/github_pratice.git

#원격지 주소 삭제
git remote remove origin
#원격 주소 변경
git remote set-url origin 레포주소
#남의 레포를 봣는데 너무 좋다 남의 레포를 가져오고 싶다.

# 남의 깃헙 레포 주소 카피 위로 한칸 올라간다.-> git clone <주소>
# 내걸로 만들고 싶으면 어떡해 ? .git 폴더를 지워버리고 내가 다시 git init하고 난 여기서부터 시작한거야 라고하면 된다.
# git init 하고 -> 내 깃허브에 들어가서 레포 만들고 -> git remote add origin <주소>
#git commit -m "my first pj"
# 팀 프로젝트하고나서 자기 repo에 가져올때 .git 폴더를 절대 지우면 안된다. 커밋 이력을 살려와야한다.
# git 설정정보 조회
git config --list


# 실습. kimseonguk197 깃에서 아무 repo 가져가기
폴더 만들 장소로 이동 -> cd 이용해서 바탕화면으로 이동
# clone -> 바탕화면에 폴더 생성
git clone https://github.com/kimseonguk197/flutter_shop.git
# 해당 폴더 vs로 오픈. -> new terminal
# 1) commit ID 다 유지하내 가져가기 ( 실제 팀 작업 후 가져가기 )
git remote set-url origin https://github.com/hyun331/flutter_shop.git(내 레포주소)
git push origin master

# 2) commit ID 없애고 내 레포인 것처럼 가져가기
git remote add origin https://github.com/hyun331/flutter_shop.git
.git 폴더 삭제 -> git init -> git remote add origin 내 레포 -> git add . -> git commit -> git push

# 실습 정리
# 1) 커밋 이력 그대로 가져오기 (팀작업)
git clone 타인레포 주소
# 해당 폴더로 이동 후 git 명령어 사용
git remote set-url 내 레포주소
git push origin (master or main)    # 별도의 add, commit 작업 필요 없음

# 2) 커밋 이력 없이 가져오기
git clone 타인레포 주소
# 해당 폴더로 이동 후 .git 폴더 삭제
git init
git remote add origin 내 레포
git add .
git commit -m "my first project"    # commit 이력이 없으므로,,
git push origin master

# fork 
# 오픈소스프로젝트에 기여하고싶은데 push할 권한이 없으므로 pull requests


# 사용자 지정 방법
# 사용자 이름이 제대로 setting되어야 잔디가 찍힘
# 전역적 사용자(이름, email) 지정
git config --global user.name "hyun331"
git config --global user.email "sus03319@gmail.com"

# 지역적 사용자(이름, email) 지정
