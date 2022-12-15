import { useState } from 'react'
import Image from 'next/image'
import styles from '../styles/Home.module.css'
import { useRouter } from 'next/router'

export default function Blob() {
  const [isFast, setIsFast] = useState(false)
  const { basePath } = useRouter()

  return (
    <div className={styles.thirteen} onClick={() => setIsFast((prev) => !prev)}>
      <Image
        src={isFast ? `${basePath}/img/fastblob.gif` : `${basePath}/img/slowblob.gif`}
        alt="blob"
        width={48}
        height={48}
        priority={true}
      />
    </div>
  )
}
