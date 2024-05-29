# 현재 working directory, staging area만 상태 확인
git status

# git add . : 모든 수정/추가사사항 add

# git add 특정파일 : 특정파일 add
git ad 특특정파일(위치포함)

# local repository에 반영 및 커밋 이력 생성
git comit -m "메세지 타이틀" -m "메세지 내용"

# vi모드에서 작성 : git commit후 엔터

# add 와 commit 동시에
git commit -am "add와 commit 동시에"

    
# commit 이력 확인, 포함. (local repository 이력)
git log
# git log 간단하게
git log --oneline
# 전체 이력 조회
git log --all

# 원격 저장소로 업로드
git push origin 브랜치명

# 충돌 무시하고 강제 push
git push origin 브랜드명 