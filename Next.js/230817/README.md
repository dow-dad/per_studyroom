PS C:\per_study\per_studyroom\Next.js\230817> npx create-next-app@latest . 
<!-- next 프로젝트 생성 및 기본 설정 -->
<!-- 타입스크립트 x , ESLine o, 테일윈드 o, src/ o, 앱라우터 o,  alias  추가 x -->
√ Would you like to use TypeScript? ... No / Yes
√ Would you like to use ESLint? ... No / Yes
√ Would you like to use Tailwind CSS? ... No / Yes
√ Would you like to use `src/` directory? ... No / Yes
√ Would you like to use App Router? (recommended) ... No / Yes
√ Would you like to customize the default import alias? ... No / Yes
Creating a new Next.js app in C:\per_study\per_studyroom\Next.js\230817.

<!-- 개발모드로 구동 -->
PS C:\per_study\per_studyroom\Next.js\230817> npm run dev

<!-- 작업 종료 ctrl+c -->
일괄 작업을 끝내시겠습니까 (Y/N)? y
PS C:\per_study\per_studyroom\Next.js\230817> npm run build

<!-- 데이더 베이스 생성 -->
PS C:\per_study\per_studyroom\Next.js\230817> npx json-server --port 9999 --watch db.json
Need to install the following packages:
  json-server@0.17.3
Ok to proceed? (y) y

  \{^_^}/ hi!

  Loading db.json
  Oops, db.json doesn't seem to exist
  Creating db.json with some default data

  Done

  Resources
  http://localhost:9999/posts
  http://localhost:9999/comments
  http://localhost:9999/profile

  Home
  http://localhost:9999

  Type s + enter at any time to create a snapshot of the database
  Watching...

  <!-- 인터넷 F12 콘솔 -->
  fetch("http://localhost:9999/topics")
    .then((resp)=>{return resp.json();})
        <!-- response를 받아서 json으로 응답하면, 서버가 우리한테 준 데이터는 json이야. 그 json을 javascript로 converting해 -->
    .then(result => {consol.log('result',result);});


  