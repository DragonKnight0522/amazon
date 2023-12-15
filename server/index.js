const express = require("express");
const cors = require("cors");
const app = express();
const mongoose = require("mongoose");

const authRouter = require("./routes/auth");
const adminRouter = require("./routes/admin");
const productRouter = require("./routes/product");
const userRouter = require("./routes/user");

app.use(cors());
app.use(express.json());
app.use(authRouter);
app.use(adminRouter);
app.use(productRouter);
app.use(userRouter);

const PORT = 3000;
const DB =
    "mongodb+srv://legend900619:mingtian2619@cluster0.htecqo0.mongodb.net/firstFlutter?retryWrites=true&w=majority";

mongoose
    .connect(DB)
    .then(() => {
        console.log("Connection Successful");
    })
    .catch((e) => {
        console.log(e);
    });

app.listen(PORT, () => {
    console.log(`connected at port ${PORT}`);
});
