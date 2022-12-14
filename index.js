const express = require("express");

const app = new express();

app.get("/", (req, res) =>
  res.send({
    status: "Success",
    message: "GitHub to AWS Elastic Container Repository to AWS AppRunner --> successful. Updated on 20220912.",
  })
);

app.listen(80, () => console.log("server listening on 80"));
