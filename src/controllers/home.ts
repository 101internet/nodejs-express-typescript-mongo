import { Request, Response } from "express";
import { User } from "../models/User";

/**
 * GET /
 * Home page.
 */
export let index = (req: Request, res: Response) => {
  res.send("Hello world");
};
