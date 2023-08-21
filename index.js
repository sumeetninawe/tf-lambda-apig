exports.handler = async (event) => {
    // Your Lambda function logic here

    const response = {
        statusCode: 200,
        headers: {
            "Content-Type": "application/json"
        },
        body: JSON.stringify({
            message: "Hello from Lambda!"
            // Add more data as needed
        })
    };

    return response;
};
