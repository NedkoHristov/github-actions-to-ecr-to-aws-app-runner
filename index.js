const express = require("express");

const app = new express();

app.get("/", (req, res) =>
  res.send({
    status: "Success",
    message: "The GitHub to AWS ECR then to AWS AppRunner is working",
  })
);

// app.listen(80, () => console.log("server listening on 80"));
