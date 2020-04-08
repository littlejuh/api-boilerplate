require('@babel/register')
require('dotenv').config()
const app = require('./src/app').default

app.listen(process.env.PORT, () => console.log(`Running in ${process.env.PORT}`))
