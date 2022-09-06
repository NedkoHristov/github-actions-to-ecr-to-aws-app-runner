const express = require("express");

const app = new express();

app.get("/", (req, res) =>
  res.send({
    status: "Success",
    message: "GitHub to AWS ECR to AWS AppRunner --> successful",
  })
);

app.listen(80, () => console.log("server listening on 80"));
