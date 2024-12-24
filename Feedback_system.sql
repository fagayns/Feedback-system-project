CREATE DATABASE feedback_system;

CREATE TABLE users (
    user_id SERIAL PRIMARY KEY,         
    name VARCHAR(100) NOT NULL,         
    email VARCHAR(150) UNIQUE NOT NULL
	);

	
CREATE TABLE categories (
    category_id SERIAL PRIMARY KEY,    
    name VARCHAR(50) UNIQUE NOT NULL
	);

CREATE TABLE feedbacks (
    feedback_id SERIAL PRIMARY KEY,    
    user_id INT REFERENCES users(user_id) ON DELETE CASCADE,  
    category_id INT REFERENCES categories(category_id),       
    content TEXT NOT NULL,              
    rating INT CHECK (rating BETWEEN 1 AND 5),  
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP  
);


-- Добавление пользователей
INSERT INTO users (name, email) VALUES 
('Alice', 'alice11@gmail.com'),
('Bob', 'bobmax@gmail.com'),
('Charlie', 'charliedamelio@gmail.com');

-- Добавление категорий
INSERT INTO categories (name) VALUES 
('Service'),
('Product'),
('Delivery');

-- Добавление отзывов
INSERT INTO feedbacks (user_id, category_id, content, rating) VALUES 
(1, 1, 'Great service!', 5),
(2, 2, 'The product quality is average.', 3),
(3, 3, 'Delivery was delayed by 3 days.', 2);

SELECT * FROM users;
SELECT * FROM categories;
SELECT * FROM feedbacks;

