-- Insertion des utilisateurs
INSERT INTO users (user_name, email, password_hash, discord_id) VALUES 
('Blond', 'pierre@example.com', 'password123', '1234567890'),
('Rubisco', 'arnaud@example.com', 'password456', '0987654321'),
('Faya', 'matthieu@example.com', 'password789', '1122334455'),
('Arl', 'fabien@example.com', 'password101', '5544332211'),
('Bqrza', 'nicolas@example.com', 'password123', '9988776655');

-- Insertion des raids
INSERT INTO raids (creator_id, raid_title, raid_date, raid_time, raid_description) VALUES
(1, 'MoltenCore', '2025-01-01', '10:00:00', 'Binds HR'),
(2, 'ZG fast no noob', '2025-01-02', '10:00:00', '45 min maxi'),
(1, 'BWL progress', '2025-01-03', '10:00:00', 'Prendre un max de conso');

-- Insertion des participants au raid
INSERT INTO raid_participants (raid_id, user_id, character_name, character_class, character_role, is_confirmed, is_benched, comment) VALUES
(1, 1, 'Blond', 'DRUID', 'TANK', TRUE, FALSE, 'I will be there'),
(1, 2, 'Rubisco', 'PALADIN', 'HEALER', TRUE, FALSE, 'Présent'),
(3, 3, 'Faya', 'SHAMAN', 'DAMAGER', TRUE, FALSE, 'Lets go !!!'),
(3, 4, 'Arl', 'PALADIN', 'DAMAGER', TRUE, FALSE, 'I will be there'),
(2, 5, 'Bqrza', 'MAGE', 'DAMAGER', TRUE, FALSE, 'I will be there');
