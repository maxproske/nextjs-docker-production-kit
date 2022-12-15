import postgres from 'postgres'

const sql = postgres({
  host: process.env.POSTGRES_HOST,
  port: Number(process.env.POSTGRES_PORT),
  database: process.env.POSTGRES_DATABASE,
  username: process.env.POSTGRES_USER,
  password: process.env.POSTGRES_PASSWORD,
  // Transform the column names only from camel case
  transform: postgres.camel,
})

export default sql
