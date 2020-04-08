import { Router } from 'express'
import httpStatus from 'http-status';
import healthCheck from './controllers/healthCheck'

const router = Router()

router.get('/health', healthCheck)

router.get('*', function(req, res, next){
    res.sendStatus(httpStatus.NOT_FOUND)
  })

export default router
