class UserService {
    constructor(userRepository) {
        this.userRepository = userRepository;
        console.info("Service initialized with the Repository")
    }

    async createUser({ user_name, email, password, discord_id }) {
        try {
            return await this.userRepository.createUser({
                user_name,
                email,
                
            })
        }
    }










}