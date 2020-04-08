import httpStatus from 'http-status'

export default (req, res, next) => { 
    res.sendStatus(httpStatus.OK)
  }
  