import { Request, Response } from 'express';
import { pool } from '../services/db';
export const getUsers = async (_req: Request, res: Response) => {
    try {
        const conn = await pool.getConnection();
        const rows = await conn.query('SELECT id, email, role FROM users');
        conn.release();
        const formattedRows = rows.map((user: any) => ({
            ...user,
            id: Number(user.id)
        }));
        res.json(formattedRows);
    } catch (err) {
        console.error('Database error:', err);
        res.status (500).json({ error: 'Error database' });
    }
}