import express from "express";
import dotenv from "dotenv";
import pool from "./config/db.js";
// import cors from "cors";
// import morgan from "morgan";
// import cookieParser from "cookie-parser";

dotenv.config();
const app = express();
const port = 3000;

//#region Health checks
app.get("/welcome", (req, res) => {
    res.json({ message: "Welcome to RaidForge !"})
});
app.get("/health", async (req, res) => {
    try {
        await pool.query('SELECT 1');
        res.status(200).json({ status : "OK", message : "DB connected" });
    } catch (error) {
        console.error("Connection error with the DB :", error.message);
        res.status(500).json({ status : "error", message : "Connection error with the DB" })
    }
});
//#endregion

app.use(express.json());

app.listen(port, () => {
  console.log(`Server launched on http://localhost:${port}`);
});
