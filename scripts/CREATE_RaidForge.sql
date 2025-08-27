CREATE TABLE IF NOT EXISTS users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    user_name VARCHAR(50) NOT NULL,
    email VARCHAR(100) NOT NULL UNIQUE,
    password_hash VARCHAR(255) NOT NULL,
    discord_id VARCHAR(50) UNIQUE,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE IF NOT EXISTS raids (
    id INT AUTO_INCREMENT PRIMARY KEY,
    creator_id INT NOT NULL,
    raid_title VARCHAR(100) NOT NULL,
    raid_date DATE NOT NULL,
    raid_time TIME NOT NULL,
    raid_description TEXT NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    CONSTRAINT fk_creator FOREIGN KEY (creator_id) REFERENCES users(id)
);

CREATE TABLE IF NOT EXISTS raid_participants (
    id INT AUTO_INCREMENT PRIMARY KEY,
    raid_id INT NOT NULL,
    user_id INT NOT NULL,
    character_name VARCHAR(50) NOT NULL,
    character_class ENUM('WARRIOR', 'PALADIN', 'HUNTER', 'ROGUE', 'PRIEST', 'SHAMAN', 'MAGE', 'WARLOCK', 'DRUID')NOT NULL,
    character_role ENUM('TANK', 'HEALER', 'DAMAGER') NOT NULL,
    is_confirmed BOOLEAN DEFAULT FALSE,
    is_benched BOOLEAN DEFAULT FALSE,
    CONSTRAINT fk_raid FOREIGN KEY (raid_id) REFERENCES raids(id) ON DELETE CASCADE,
    CONSTRAINT fk_user FOREIGN KEY (user_id) REFERENCES users(id) ON DELETE CASCADE,
    comment TEXT
);
