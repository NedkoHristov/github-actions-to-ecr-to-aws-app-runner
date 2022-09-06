const express = require("express");

const app = new express();

app.get("/", (req, res) =>
  res.send({
    status: "✅ success",
    message: "proton is awesome, so is copilot! ❤️",
  })
);

app.listen(80, () => console.log("server listening on 80"));
