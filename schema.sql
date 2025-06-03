DROP TABLE IF EXISTS users;
DROP TABLE IF EXISTS contacts;

CREATE TABLE IF NOT EXISTS users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    email VARCHAR(255) NOT NULL UNIQUE,
    password_hash TEXT NOT NULL,
    role VARCHAR(50) DEFAULT 'user',
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);
 
CREATE TABLE IF NOT EXISTS contacts(
    id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(100) NOT NULL,
    last_name VARCHAR(100) NOT NULL,
    email VARCHAR(255),
    phone VARCHAR(20),
    company VARCHAR(255),
    status VARCHAR(50) DEFAULT 'prospect',
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

INSERT INTO users (email, password_hash, role)
VALUES
('admin@example.com', 'hashed_password_admin', 'admin'),
('user1@example.com', 'hashed_password_user1', 'user'),
('user2@example.com', 'hashed_password_user2', 'user');

INSERT INTO contacts (first_name, last_name, email, phone, company, status)
VALUES
('Alice', 'Dupont', 'alice.dupont@example.com', '+33123456789', 'TechCorp', 'client'),
('Bob', 'Martin', 'bob.martin@example.com', '+33698765432', 'DesignCo', 'prospect'),
('Claire', 'Durand', 'claire.durand@example.com', '+33765432109', 'InnovateX', 'lead'),
('David', 'Lemoine', NULL, NULL, 'BuildRight', 'prospect'),
('Élise', 'Moreau', 'elise.moreau@example.com', '+33912345678', 'Marketing360', 'client');