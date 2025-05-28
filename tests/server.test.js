const request = require('supertest');
const app = require('../src/server');

describe('Health check', () => {
  it('should return 200 OK', async () => {
    const res = await request(app).get('/health');
    expect(res.statusCode).toBe(200);
  });
});
