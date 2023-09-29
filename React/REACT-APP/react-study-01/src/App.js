import './App.css';
import {useState} from 'react'

// 사용자 정의 태그를 만들 때엔 반드시 대문자로 만들어야 한다.
function Header(props) {
  return (
    <header>
      {/* 홈으로 이동하는 해더 생성 */}
      <h1>
        <a href="/" onClick={(event) => {
          event.preventDefault();
          // a태그가 동작하는걸 방지한다. 클릭해도 리로드가 일어나지 않는다
          props.onChangeMode();
          //onChangeMode 함수 호출
        }}>{props.title}</a>
      </h1>
    </header>
  );
}

function Article(props) {
  return (
    <article>
      {/* 페이지 본문 */}
      <h2>
        {props.title}
      </h2>
      {props.body}
    </article>
  );
}

function Nav(props) {
  const lis = [
  ]
  for (let i = 0; i < props.topics.length; i++) {
    let t = props.topics[i];
    lis.push(<li key={t.id}>
      <a id={t.id} title={t.title} body={t.body} href={`/name/${t.id}`} onClick={(event) => {
        event.preventDefault();
        props.onChangeMode(Number(event.target.id));
        // event안에 저장되어있는 target에서 id값만 가져옴(문자열)
        //javascript의 number로 문자열을 숫자로 변환
      }}>
        {t.title}
      </a>
    </li>)
  }

  return (
    <nav>
      {/* 구체적인 페이지로 이동하는 영역 */}
      <ol>
        {lis}
      </ol>
    </nav>
  );
}
//페이지 출력
export default function App() {
  // Nav에 들어갈 페이지 이동 리스트를 고유 아이디를 포함한 배열을 topics라는 변수에 담는다.
  const topics = [
    { id: 1, title: 'html', body: 'html is ...' },
    { id: 2, title: 'css', body: 'css is ...' },
    { id: 3, title: 'javascript', body: 'javascript is ...' }
  ]

  const [mode, setMode] = useState('WELCOME'); //mode 값 변경
  const [id, setId] = useState(null); //id값 변경

  let content = null;

  if (mode === 'WELCOME') {
    content = <Article title="Welcome" body="Hello, WEB"></Article>
  } else if (mode === 'READ') {
    // title, body 값 초기화
    let title, body = null;
    //id값이 서로 일치하면 title, body 값을 해당 원소로 변경
    for(let i=0; i<topics.length; i++){
      if(topics[i].id === id){
        title = topics[i].title;
        body = topics[i].body;
      }
    }
    content = <Article title={title} body={body}></Article>
  }

  return (
    <div>
      <Header title="WEB" onChangeMode={() => {
        setMode('WELCOME');
      }}></Header>
      {/* topics를 배열 형태 그대로 전달.  */}
      <Nav topics={topics} onChangeMode={(_id) => {
        setMode('READ');
        //id값을 _id값으로 변경
        setId(_id);
      }}></Nav>
      {content}
    </div>
  );
}

