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
# 로그를 그래프형태 조회
git log --graph
# 원격 저장소로 업로드
git push origin 브랜치명

# 충돌 무시하고 강제 push
git push origin 브랜드명 

# 충돌발생 -> 원격 내용이 뭔지 pull 받아오고 -> 내껏 비교해서 충돌해결 -> merge
# 충돌발생 -> 로컬 기준으로 강제 push -> git push origin master --force

# 특정 commit id로 전환
# commit message 중요하므로 잘써야함
git checkout 커밋id

# 다시 현재의 master(브랜치)의 commit으로 return
git checkout commitID
# 원래대로 돌아오기
git checkout main

# git pull : 원격의 변경사항을 local로 다운로드
git pull origin 브랜치명
git pull #(main인 경우 이렇게 만 써도 가능)

# git 작업 취소
# working directory에서 수정사항만 취소
# test1.txt를 변경하고 저장함. 그 전으로 돌리고 싶으면? (ctrl+z말고) -> discard changes 누르기
# changes에 있는 모든  파일 이전으로
git checkout .
# working directory에서 추가 파일 취소
git clean --fdx
# 수정취소 동시에 취소
git chekcout . | git clean --fdx
# staging area 에서의 취소. 
# staging -> working으로 내려옴. 
#staged changes에 있는 모든 파일 add 상태로
git reset

# commit 이후의 취소
git reset HEAD~1
git reset HEAD^

# push 이후의 취소
git revert 커밋ID

# 버전별 비교 명령어 : diff
# A를 기준으로 B가 어떤 변경이 있는지를 비교함
git diff A B
git diff commitId1 commitId2
git diff A브랜치 B브랜치



# 원격에서 변경하고 commit -> 아래 명령어 작성
# fetch : 변경사항을 가져오지만 반영(merge)하지는 않음
git fetch origin main
git log  # 원격에서 변경한 커밋 안보임
git log --all   #원격에서 변경한 커밋 보임. fetch를 안하면 못봄
git merge origin/main   # 원격과 같아지도록 합치기


# 충돌
# git fetch
# 원격의 변경사항을 로컬에 가져오되 병합은 하지 않음.
# 비교 : git pull origin master과 git fetch origin master비교


# pull = fetch + merge(=fast-forward. master가 위로올라감)
# merge : 두개의 변경사항을 합친다. 나의 마스터가 원격마스터로 이동

# 로컬과 원격 모두에 새로운 커밋이 있을 때 merge한다면? (둘의 커밋은 다름)
# -> D와 E를 합친 새로운 F가 생김


# 작업중인 사항을 임시저장
git stash
# 저장한 최신의 작업목록 꺼내기
git stash pop 
# 저장한 작업사항 목록조회
git stash list
# 저장한 작업목록 상세조회
git stash show -p 인덱스

#stash 실습
# test1.txt, test2.txt 변경하기
git stash
git stash list
git stash pop