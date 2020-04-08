import healthCheck from '../../../src/controllers/healthCheck'
import httpStatus from 'http-status';

describe('healthCheck controller', () => {
  let response

  beforeEach(() => {
    response = {
      sendStatus: jest.fn()
    }
  })

  it('should return 200 OK as status code', () => {
    healthCheck(null, response)
    expect(response.sendStatus).toHaveBeenCalledWith(httpStatus.OK)
  })
})
