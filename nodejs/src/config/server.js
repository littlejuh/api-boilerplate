import express from 'express'
import bodyParser from 'body-parser'
import cors from 'cors'

const server = express()

server.use(bodyParser.json())

server.use(
  cors({
    origin: process.env.HOST,
    methods: 'GET,HEAD,PUT,PATCH,POST,DELETE'
    }))

export default server




