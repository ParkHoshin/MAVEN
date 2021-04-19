```
정의 : 메이븐 라이브러리를 저장하는 디렉토리.
pom.xml에서의 세팅.(신한 기준)

<repositories>        : 기본 중앙 maven저장소 이외의 원격저장소 주소를 정의합니다. 라이브러리의 다운로드시 다운받는 위치정보
    <repository>
        <releases>    : releases 일때
            <enabled> : 해당 이슈로 다운로드 할때 저장소를 사용할것인지 여부
            <updatePolicy> : 업데이트 받는 빈도
            <checksumPolicy> : 체크섬 확인이 실패할 때 수행할 작업(체크섬: 전송된 데이터의 값이 변경되었는지 확인)
        <snapshots>   : snapshots 일때
            <enabled> : 해당 이슈로 다운로드 할때 저장소를 사용할것인지 여부
            <updatePolicy> : 업데이트 받는 빈도
            <checksumPolicy> : 체크섬 확인이 실패할 때 수행할 작업(체크섬: 전송된 데이터의 값이 변경되었는지 확인)
        <id>          : 저장소 고유 id
        <name>        : 저장소 이름
        <url>         : 저장소 url
        <layout>      : 레이아웃 형태(legacy or default)
 </repositories>   
 
 
<repository>
			<id>mvn2</id>
			<url>http://repo1.maven.org/maven2/</url>    --------------->기존 글로벌 로컬 디렉토리
			<releases>
				<enabled>true</enabled>
			</releases>
			<snapshots>
				<enabled>true</enabled>
			</snapshots>
		</repository>
		<repository>
			<id>java.net2</id>
			<name>Repository hosting the jee6 artifacts</name>
			<url>http://download.java.net/maven/2</url>
		</repository>
		<repository>
			<id>oracle</id>
			<url>http://code.lds.org/nexus/content/groups/main-repo</url> ------------------>nexus에서 가져오기
		</repository>
    
    release 와 snapshot
    release : 빌드 시에 로컬 저장소 부터 검색한다.즉, 로컬 저장소(보통 {사용자디렉터리}\.m2\repository)에 필요한 Artifact가 있으면 원격 저장소에서 다운로드 받지 않고 로컬에 있는 것을 사용한다. 물론 최하위 버전 숫자까지 동일해야 하면 로컬에 없으면 원격으로부터 다운로드 받는다.
    snapshot : release와 반대로 원격 저장소에 있는것을 사용한다.로컬에 이미 존재 하더라도 원격저장소에 최신의 Artiface가 있으면 그것을 다운로드 받아서 사용한다.그래서 Artiface 파일 뒤에 시간과 빌드번호가 붙게된다.
    *특징적으로 relaese는 Artiface의 수정이 거의 없는 최종 배포될 때 사용하고, snapshot은 Artifact의 수정이 빈번한 개발중에 사용한다.
