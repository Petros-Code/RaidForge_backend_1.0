class UserRepository {
    constructor(pool) {
        this.pool = pool;
        console.info("Repository initialized with the DB pool")
    }

    async createUser({ user_name, email, password, discord_id }) {
        try {
            const result = await this.pool.query(
                'INSERT INTO users (user_name, email, password, discord_id) VALUES (?,?,?,?)'
                [user_name, email, password, discord_id]
            );
            return { id: result.id, user_name, email }
        } catch (error) {
            console.error(error);
            throw new Error("Error while creating user : " + error.message);
        }
    }



}

export default UserRepository;