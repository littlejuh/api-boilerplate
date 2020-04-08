import server from './config/server';
import routes from './routes'

server.use('/', routes) 

export default server
