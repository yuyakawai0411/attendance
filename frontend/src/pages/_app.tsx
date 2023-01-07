import "../styles/globals.css";
import type { AppProps } from "next/app";
import Head from 'next/head'
import { HeaderArea } from '../components/area/HeaderArea'
import { FooterArea } from '../components/area/FooterArea'

export default function App({ Component, pageProps }: AppProps) {
  return(
    <>
      <Head>
        <title>勤怠アプリ</title>
      </Head>
      <HeaderArea />
      <Component {...pageProps} />
      <FooterArea />
    </>
    )
}
