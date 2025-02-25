CREATE DATABASE task_manager;

USE task_manager;

CREATE TABLE tasks (
    id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(255) NOT NULL,
    description TEXT,
    category VARCHAR(100),
    priority VARCHAR(50),
    deadline DATE,
    status VARCHAR(50) DEFAULT 'Pending'
);

CREATE TABLE goal_progress (
    id INT AUTO_INCREMENT PRIMARY KEY,
    goal_name VARCHAR(255) NOT NULL,
    task_id INT,
    progress INT DEFAULT 0,
    FOREIGN KEY (task_id) REFERENCES tasks(id)
);

SELECT * FROM goal_progress;
SELECT * FROM tasks;

DROP TABLE goal_progress;
DROP TABLE tasks;
