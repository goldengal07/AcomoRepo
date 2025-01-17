-- SQLite
CREATE TABLE Rooms (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name TEXT,
    location TEXT,
    price INTEGER,
    mrt TEXT,
    type TEXT,
    size INTEGER
);

INSERT INTO Rooms (name, location, price, mrt, type, size)
VALUES
('688C Choa Chu Kang Crescent', 'Yew Tee', 850, 'Yew Tee', 'Common', 140), 
('370 Bukit Batok Street 31', 'Bukit Batok', 1300, 'Bukit Gombak', 'Master', 130), 
('548 Bedok North Avenue 1', 'Bedok', 1200, 'Bedok', 'Master', 200), 
('Dover Parkview', 'Queenstown', 1500, 'Dover', 'Common', 120), 
('The Lakeshore', 'Jurong West', 1200, 'Lakeside', 'Common', 180), 
('The Terrace', 'Punggol', 1100, 'Punggol', 'Common', 100), 
('Barbary Walk', 'Queenstown', 1800, 'Queenstown', 'Common', 250),
('102 Jurong East Street 13', 'Bedok', 1300, 'Jurong East', 'Master', 250),
('YewTee Residences', 'Yew Tee', 1300, 'Yew Tee', 'Common', 200),
('YewTee Residences', 'Yew Tee', 1150, 'Yew Tee', 'Common', 200),
('220 Hougang Street 21', 'Hougang', 1100, 'Kovan', 'Common', 100),
('523C Tampines Central 7', 'Tampines', 2200, 'Tampines', 'Master', 350),
('Astoria Park', 'Kembangan', 1500, 'Kembangan', 'Common', 100),
('The Champagne', 'Kembangan', 1400, 'Kembangan', 'Common', 120),
('Rajah Towers', 'Toa Payoh', 1300, 'Toa Payoh', 'Common', 500),
('437 Yishun Avenue 6', 'Yishun', 900, 'Khatib', 'Common', 120),
('Rajah Towers', 'Toa Payoh', 1500, 'Toa Payoh', 'Master', 300),
('The Champagne', 'Kembangan', 2000, 'Kembangan', 'Master', 140),
('The Waterina', 'Geylang', 950, 'Dakota', 'Common', 150),
('9 Saint George Road', 'Bendemeer', 1700, 'Boon Keng', 'Master', 155),
('River Valley', 'River Valley', 1380, 'Somerset', 'Common', 100);

SELECT * FROM Rooms;
