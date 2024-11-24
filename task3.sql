CREATE TABLE Members (
    id INT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    age INT
);

CREATE TABLE WorkoutSessions (
    session_id INT PRIMARY KEY,
    member_id INT,
    session_date DATE,
    session_time VARCHAR(50),
    activity VARCHAR(255),
    FOREIGN KEY (member_id) REFERENCES Members(id)
);

INSERT INTO Members (id, name, age)
VALUES (1, 'JOHN DOE', 22),
	   (2, 'STACY JOHNS', 32),
       (3, 'LUCY JOHNS', 18),
       (4, 'PRINCESS PEACH', 40));
       
SELECT * FROM MEMBERS;
	 
INSERT INTO WorkoutSessions (session_id, member_id, session_date, session_time, activity)
VALUES (1, 1, '2024-11-23', 'MORNING', 'CHEST');
    
SELECT * FROM WorkoutSessions;

UPDATE WorkoutSessions SET session_time = 'evening'
WHERE member_id= 1;
    
SELECT * FROM WorkoutSessions;

INSERT INTO MEMBERS (ID, NAME, AGE)
VALUES (5, 'JOHN SMITH', 27);

SELECT *FROM MEMBERS;

DELETE FROM MEMBERS WHERE id = 5;

SELECT * FROM MEMBERS;
