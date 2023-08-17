import Image from 'next/image'

//<img src=''></img> 정적 자원 사용(public)
export default function Home() {
  return (
    <>
    <h2>wellcome</h2>
    Hello, WEB!
    <img src='/justimg.jpg'></img>
    </>
  )
}
