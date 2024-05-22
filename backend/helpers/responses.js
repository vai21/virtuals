const successResponse = (data = {}) => ({
  message: 'success',
  data,
});

const failedResponse = (data = {}) => ({
  message: 'failed',
  data,
});

module.exports = { successResponse, failedResponse };
