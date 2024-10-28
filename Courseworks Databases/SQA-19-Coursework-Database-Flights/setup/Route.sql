CREATE TABLE Route (
    routeID INTEGER PRIMARY KEY,
    departFrom TEXT,
    arriveAt TEXT,
    midStopOne TEXT,
    midStopTwo TEXT
);



INSERT INTO Route (routeID, departFrom, arriveAt, midStopOne, midStopTwo) VALUES
(1279, 'GLA', 'IBZ', 'BRU', NULL),
(1329, 'MMX', 'LHR', NULL, NULL),
(1902, 'VNO', 'EDI', 'BER', 'LHR'),
(1924, 'SAW', 'LHR', NULL, NULL),
(2716, 'NAP', 'MAN', NULL, NULL),
(2847, 'LPL', 'ARN', 'AMS', NULL),
(3187, 'ATH', 'EDI', NULL, NULL),
(3651, 'MAN', 'FRA', NULL, NULL),
(3976, 'STN', 'CHQ', 'VIE', NULL),
(4153, 'BFS', 'BCN', NULL, NULL),
(4551, 'LGW', 'LAX', 'JFK', 'DEN'),
(4871, 'STN', 'MUC', NULL, NULL),
(5172, 'BHX', 'FCO', NULL, NULL),
(5281, 'HEL', 'LPL', 'AMS', NULL),
(5765, 'BHX', 'BUD', NULL, NULL),
(6232, 'ABZ', 'LSI', NULL, NULL),
(6982, 'SVQ', 'GLA', 'MAD', NULL),
(7120, 'EDI', 'SVQ', NULL, NULL),
(7625, 'BRS', 'LIS', NULL, NULL),
(9214, 'EDI', 'DUB', NULL, NULL);
