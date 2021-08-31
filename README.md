# AppTemplate
the swift composable architecture app template

## rename workspace
xcode 를 닫는다. 
- 새로운 프로젝트 폴더로 이동하자. 
- 다음 새로운 툴을 설치.. 
    - brew install rename ack
- 다음 명령어를 두번 실행
```zsh
 find . -name 'AppTemplate*' -print0 | xargs -0 rename --subst-all 'oldName' 'AppTemplate'
```
- check
```zsh
find . -name 'AppTemplate*'
```

- 파일내에 모든 문자열을 교체
```zsh
ack --literal --files-with-matches 'AppTemplate' --print0 | xargs -0 sed -i '' 's/AppTemplate/NewProject/g'
```
- check
```zsh
ack --literal 'AppTemplate'
```
