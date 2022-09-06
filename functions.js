// A sample function to demo containers deployment on aws lambda
exports.helloLambda = async (event) => {
  const response = {
    isBase64Encoded: false,
    statusCode: 200,
    headers: {
      "Content-Type": "application/json",
    },
    body: JSON.stringify({
      message: "Containers on lambda!🐳",
    }),
  };
  return response;
};
