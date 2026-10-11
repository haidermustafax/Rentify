USE rentify_db;

-- 1. Users Table
CREATE TABLE IF NOT EXISTS users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    full_name VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    password_hash VARCHAR(255) NOT NULL,
    role ENUM('user', 'admin') DEFAULT 'user',
    wallet_balance DECIMAL(10, 2) DEFAULT 0.00,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB;

-- 2. Categories Table
CREATE TABLE IF NOT EXISTS categories (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(50) NOT NULL UNIQUE,
    slug VARCHAR(50) NOT NULL UNIQUE
) ENGINE=InnoDB;

INSERT IGNORE INTO categories (id, name, slug) VALUES
(1, 'Home & Furniture', 'furniture'),
(2, 'Electronics', 'electronics'),
(3, 'Car Rentals', 'cars'),
(4, 'Event Venues & Equipment', 'events'),
(5, 'Hostel & Short Stays', 'stays');

-- 3. Listings Table
CREATE TABLE IF NOT EXISTS listings (
    id INT AUTO_INCREMENT PRIMARY KEY,
    category_id INT NOT NULL,
    title VARCHAR(150) NOT NULL,
    description TEXT,
    price_per_day DECIMAL(10, 2) NOT NULL,
    deposit_amount DECIMAL(10, 2) DEFAULT 0.00,
    location VARCHAR(100),
    is_available BOOLEAN DEFAULT TRUE,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (category_id) REFERENCES categories(id) ON DELETE CASCADE
) ENGINE=InnoDB;

-- 4. Bookings Table
CREATE TABLE IF NOT EXISTS bookings (
    id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT NOT NULL,
    listing_id INT NOT NULL,
    start_date DATE NOT NULL,
    end_date DATE NOT NULL,
    total_price DECIMAL(10, 2) NOT NULL,
    deposit_amount DECIMAL(10, 2) DEFAULT 0.00,
    status ENUM('pending', 'confirmed', 'completed', 'cancelled') DEFAULT 'confirmed',
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (user_id) REFERENCES users(id) ON DELETE CASCADE,
    FOREIGN KEY (listing_id) REFERENCES listings(id) ON DELETE CASCADE
) ENGINE=InnoDB;

-- 5. Wallet Transactions Table
CREATE TABLE IF NOT EXISTS wallet_transactions (
    id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT NOT NULL,
    amount DECIMAL(10, 2) NOT NULL,
    transaction_type ENUM('topup', 'payment', 'refund') NOT NULL,
    reference_id VARCHAR(100),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (user_id) REFERENCES users(id) ON DELETE CASCADE
) ENGINE=InnoDB;

-- Sample Listings Data
INSERT INTO listings (category_id, title, description, price_per_day, deposit_amount, location) VALUES
(1, 'Ergonomic Mesh Office Chair', 'High-back mesh chair with adjustable armrests and lumbar support.', 15.00, 50.00, 'Karachi Central'),
(2, 'Sony PS5 Console + 2 Controllers', 'PlayStation 5 digital edition with 2 DualSense controllers and preloaded games.', 35.00, 100.00, 'DHA Phase 6'),
(3, 'Toyota Corolla Grandi 2023', 'Automatic transmission, self-drive, full options, pristine condition.', 60.00, 200.00, 'Clifton'),
(4, 'Professional Stage Lighting Set', 'Includes 4 PAR LED lights, stand, and DMX controller for indoor/outdoor events.', 80.00, 150.00, 'PECHS'),
(5, 'Furnished Single Room Bedspace', 'Includes AC, high-speed WiFi, attached washroom, and daily maintenance.', 25.00, 80.00, 'Gulshan-e-Iqbal');
