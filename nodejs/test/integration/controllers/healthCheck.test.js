import request from 'supertest'
import app from '../../../src/app'
import httpStatus from 'http-status';

describe('health', () => {
  describe('GET /health', () => {
    it('returns status 200 OK', () => {
      return request(app)
        .get('/health')
        .then((res) => {
          expect(res.status).toEqual(httpStatus.OK)
        })
    })
  })

  describe('POST /health', () => {
    it('returns status 404 NOT FOUND', () => {
      return request(app)
        .post('/health')
        .then((res) => {
          expect(res.status).toEqual(httpStatus.NOT_FOUND)
        })
    })
  })
})
