USE DATABASE VAD_DBT_TEST;

-- Insert Country data
INSERT INTO VAD_DBT_TEST.DBT_DVAD.Country (CountryID, Name)
VALUES
    (1, 'France'),
    (2, 'Germany'),
    (3, 'United Kingdom'),
    (4, 'Switzerland'),
    (5, 'Denmark'),
    (6, 'United States'),
    (7, 'Canada'),
    (8, 'Cameroon'),
    (9, 'Nigeria'),
    (10, 'South Africa'),
    (11, 'China'),
    (12, 'India'),
    (13, 'Japan'),
    (14, 'Brazil'),
    (15, 'Argentina'),
    (16, 'New Zealand');


-- Insert City data
INSERT INTO VAD_DBT_TEST.DBT_DVAD.City (CityID, Name, CountryID)
VALUES
    -- Cities in France
    (1, 'Paris', 1),
    (2, 'Marseille', 1),
    (3, 'Lyon', 1),
    (4, 'Toulouse', 1),
    (5, 'Nice', 1),
    -- Cities in Germany
    (6, 'Berlin', 2),
    (7, 'Hamburg', 2),
    (8, 'Munich', 2),
    (9, 'Cologne', 2),
    (10, 'Frankfurt', 2),
    -- Cities in the United Kingdom
    (11, 'London', 3),
    (12, 'Manchester', 3),
    (13, 'Birmingham', 3),
    (14, 'Glasgow', 3),
    (15, 'Liverpool', 3),
    -- Cities in Switzerland
    (16, 'Zurich', 4),
    (17, 'Geneva', 4),
    (18, 'Bern', 4),
    (19, 'Lausanne', 4),
    (20, 'Lucerne', 4),
    -- Cities in Denmark
    (21, 'Copenhagen', 5),
    (22, 'Aarhus', 5),
    (23, 'Odense', 5),
    (24, 'Aalborg', 5),
    (25, 'Esbjerg', 5),
    -- Cities in the United States
    (26, 'New York', 6),
    (27, 'Los Angeles', 6),
    (28, 'Chicago', 6),
    (29, 'Houston', 6),
    (30, 'Miami', 6),
    -- Cities in Canada
    (31, 'Toronto', 7),
    (32, 'Montreal', 7),
    (33, 'Vancouver', 7),
    (34, 'Calgary', 7),
    (35, 'Ottawa', 7),
    -- Cities in Cameroon
    (36, 'Yaounde', 8),
    (37, 'Douala', 8),
    (38, 'Bamenda', 8),
    (39, 'Bafoussam', 8),
    (40, 'Maroua', 8),
    -- Cities in Nigeria
    (41, 'Lagos', 9),
    (42, 'Abuja', 9),
    (43, 'Kano', 9),
    (44, 'Ibadan', 9),
    (45, 'Kaduna', 9),
    -- Cities in South Africa
    (46, 'Johannesburg', 10),
    (47, 'Cape Town', 10),
    (48, 'Durban', 10),
    (49, 'Pretoria', 10),
    (50, 'Bloemfontein', 10),
    -- Cities in China
    (51, 'Beijing', 11),
    (52, 'Shanghai', 11),
    (53, 'Guangzhou', 11),
    (54, 'Shenzhen', 11),
    (55, 'Chengdu', 11),
    -- Cities in India
    (56, 'Mumbai', 12),
    (57, 'New Delhi', 12),
    (58, 'Bangalore', 12),
    (59, 'Kolkata', 12),
    (60, 'Chennai', 12),
    -- Cities in Japan
    (61, 'Tokyo', 13),
    (62, 'Osaka', 13),
    (63, 'Kyoto', 13),
    (64, 'Sapporo', 13),
    (65, 'Nagoya', 13),
    -- Cities in Brazil
    (66, 'Sao Paulo', 14),
    (67, 'Rio de Janeiro', 14),
    (68, 'Brasilia', 14),
    (69, 'Salvador', 14),
    (70, 'Fortaleza', 14),
    -- Cities in Argentina
    (71, 'Buenos Aires', 15),
    (72, 'Cordoba', 15),
    (73, 'Rosario', 15),
    (74, 'Mendoza', 15),
    (75, 'Salta', 15),
    -- Cities in New Zealand
    (76, 'Auckland', 16),
    (77, 'Wellington', 16),
    (78, 'Christchurch', 16),
    (79, 'Hamilton', 16),
    (80, 'Dunedin', 16);


-- Insert statement for 10 brands
INSERT INTO VAD_DBT_TEST.DBT_DVAD.Brand (BrandID, Name)
VALUES
  (1, 'Nike'),
  (2, 'Apple'),
  (3, 'Coca-Cola'),
  (4, 'Toyota'),
  (5, 'Samsung'),
  (6, 'McDonald\'s'),
  (7, 'Disney'),
  (8, 'Amazon'),
  (9, 'Microsoft'),
  (10, 'Google');


  
-- Insert statement for 100 products with uneven distribution across 10 brands
INSERT INTO VAD_DBT_TEST.DBT_DVAD.Product (ProductID, Name, BrandID)
VALUES
  -- Products for Nike
  (1, 'Air Max 270', 1),
  (2, 'Free RN 5.0', 1),
  (3, 'React Infinity Run', 1),
  (4, 'Air Force 1', 1),
  (5, 'Zoom Pegasus Turbo', 1),

  -- Products for Apple
  (6, 'iPhone 13', 2),
  (7, 'MacBook Pro', 2),
  (8, 'Apple Watch Series 7', 2),

  -- Products for Coca-Cola
  (9, 'Coca-Cola Original', 3),
  (10, 'Diet Coke', 3),

  -- Products for Toyota
  (11, 'Camry', 4),

  -- Products for Samsung
  (12, 'Galaxy S21', 5),
  (13, 'QLED 4K TV', 5),

  -- Products for McDonald's
  (14, 'Big Mac', 6),
  (15, 'McFlurry', 6),

  -- Products for Disney
  (16, 'Mickey Mouse Plush Toy', 7),

  -- Products for Amazon
  (17, 'Kindle Paperwhite', 8),
  (18, 'Echo Dot', 8),

  -- Products for Microsoft
  (19, 'Surface Laptop', 9),

  -- Products for Google
  (20, 'Pixel 6', 10),
  (21, 'Nest Thermostat', 10),
  (22, 'Pixel Buds', 10),
  -- Products for Apple
  (23, 'AirPods Pro', 2),
  (24, 'iPad Pro', 2),

  -- Products for Coca-Cola
  (25, 'Coca-Cola Zero Sugar', 3),

  -- Products for Toyota
  (26, 'RAV4', 4),

  -- Products for Samsung
  (27, 'Galaxy Tab S7', 5),
  (28, 'The Frame TV', 5),

  -- Products for McDonald's
  (29, 'Quarter Pounder', 6),
  (30, 'Chicken McNuggets', 6),

  -- Products for Disney
  (31, 'Disney Princess Dolls', 7),

  -- Products for Amazon
  (32, 'Fire TV Stick', 8),
  (33, 'Ring Video Doorbell', 8),

  -- Products for Microsoft
  (34, 'Xbox Series X', 9),

  -- Products for Google
  (35, 'Nest Cam Outdoor', 10),
  (36, 'Chromecast with Google TV', 10),
  -- Products for Nike
  (37, 'Nike Air Jordan 1', 1),
  (38, 'Nike React Element 55', 1),

  -- Products for Apple
  (39, 'Apple AirPods Max', 2),
  (40, 'iPad Air', 2),

  -- Products for Coca-Cola
  (41, 'Coca-Cola Cherry', 3),

  -- Products for Toyota
  (42, 'Corolla', 4),

  -- Products for Samsung
  (43, 'Galaxy Buds Pro', 5),

  -- Products for McDonald's
  (44, 'Filet-O-Fish', 6),

  -- Products for Disney
  (45, 'Disneyland Tickets', 7),

  -- Products for Amazon
  (46, 'Kindle Oasis', 8),

  -- Products for Microsoft
  (47, 'Microsoft 365', 9),

  -- Products for Google
  (48, 'Google Nest Hub', 10),
  -- Products for Nike
  (49, 'Nike Zoom Fly', 1),

  -- Products for Apple
  (50, 'Apple HomePod Mini', 2),

  -- Products for Coca-Cola
  (51, 'Coca-Cola Lime', 3),

  -- Products for Toyota
  (52, 'Highlander', 4),

  -- Products for Samsung
  (53, 'Galaxy Watch 4', 5),

  -- Products for McDonald's
  (54, 'Happy Meal', 6),

  -- Products for Disney
  (55, 'Disney+ Subscription', 7),

  -- Products for Amazon
  (56, 'Fire HD Tablet', 8),

  -- Products for Microsoft
  (57, 'Xbox Game Pass', 9),

  -- Products for Google
  (58, 'Google Pixel Stand', 10),
  -- Products for Nike
  (59, 'Nike Free Run', 1),

  -- Products for Apple
  (60, 'Apple MacBook Air', 2),

  -- Products for Coca-Cola
  (61, 'Coca-Cola Vanilla', 3),

  -- Products for Toyota
  (62, 'Prius', 4),

  -- Products for Samsung
  (63, 'Galaxy Note 20', 5),

  -- Products for McDonald's
  (64, 'Apple Pie', 6),

  -- Products for Disney
  (65, 'Disneyland Annual Pass', 7),

  -- Products for Amazon
  (66, 'Echo Show', 8),

  -- Products for Microsoft
  (67, 'Surface Pro', 9),

  -- Products for Google
  (68, 'Google Pixelbook', 10),
  -- Products for Nike
  (69, 'Nike Air Zoom Pegasus', 1),

  -- Products for Apple
  (70, 'Apple iMac', 2),

  -- Products for Coca-Cola
  (71, 'Coca-Cola Zero Caffeine', 3),

  -- Products for Toyota
  (72, 'Yaris', 4),

  -- Products for Samsung
  (73, 'Galaxy Tab S7 Plus', 5),

  -- Products for McDonald's
  (74, 'McChicken', 6),

  -- Products for Disney
  (75, 'Disneyland Paris Tickets', 7),

  -- Products for Amazon
  (76, 'Amazon Echo Plus', 8),

  -- Products for Microsoft
  (77, 'Xbox Series S', 9),

  -- Products for Google
  (78, 'Google Home Max', 10),
  -- Products for Nike
  (79, 'Nike Air Zoom Terra Kiger', 1),

  -- Products for Apple
  (80, 'Apple iPad Mini', 2),

  -- Products for Coca-Cola
  (81, 'Coca-Cola Orange Vanilla', 3),

  -- Products for Toyota
  (82, 'Corolla Hatchback', 4),

  -- Products for Samsung
  (83, 'Galaxy Buds Live', 5),

  -- Products for McDonald's
  (84, 'McCafé Cappuccino', 6),

  -- Products for Disney
  (85, 'Disneyland Tokyo Tickets', 7),

  -- Products for Amazon
  (86, 'Amazon Kindle Fire', 8),

  -- Products for Microsoft
  (87, 'Microsoft Surface Go', 9),

  -- Products for Google
  (88, 'Google Nest Mini', 10),
  -- Products for Nike
  (89, 'Nike Air Zoom Alphafly Next%', 1),

  -- Products for Apple
  (90, 'Apple AirTag', 2),

  -- Products for Coca-Cola
  (91, 'Coca-Cola Raspberry', 3),

  -- Products for Toyota
  (92, 'RAV4 Hybrid', 4),

  -- Products for Samsung
  (93, 'Galaxy Fit2', 5),

  -- Products for McDonald's
  (94, 'Fries', 6),

  -- Products for Disney
  (95, 'Disneyland Hong Kong Tickets', 7),

  -- Products for Amazon
  (96, 'Amazon Fire TV Cube', 8),

  -- Products for Microsoft
  (97, 'Microsoft Surface Studio', 9),

  -- Products for Google
  (98, 'Google Stadia', 10),

  -- Additional product
  (99, 'Generic Product A', 1),
  (100, 'Generic Product B', 2);

SELECT * FROM VAD_DBT_TEST.DBT_DVAD.Customer;



-- Insert statement for customers in France
INSERT INTO VAD_DBT_TEST.DBT_DVAD.Customer (CustomerID, Name, CityID, CountryID)
VALUES
    (1, 'Pierre', 1, 1),   -- Paris, France
    (2, 'Sophie', 1, 1),   -- Paris, France
    (3, 'Luc', 1, 1),      -- Paris, France
    (4, 'Camille', 1, 1),  -- Paris, France
    (5, 'Emilie', 1, 1),   -- Paris, France

    (6, 'Antoine', 2, 1),  -- Marseille, France
    (7, 'Céline', 2, 1),   -- Marseille, France
    (8, 'Louis', 2, 1),    -- Marseille, France
    (9, 'Elise', 2, 1),    -- Marseille, France

    (10, 'Théo', 3, 1),    -- Lyon, France
    (11, 'Gilles', 4, 1),    -- Toulouse, France
    (12, 'Julia', 4, 1),     -- Toulouse, France
    (13, 'Paul', 4, 1),      -- Toulouse, France

    (14, 'Claude', 5, 1),    -- Nice, France
    (15, 'Natalie', 5, 1),   -- Nice, France
    (16, 'Thibaut', 5, 1),   -- Nice, France
    (17, 'Sophie', 5, 1);    -- Nice, France


-- Insert statement for customers in Germany
INSERT INTO VAD_DBT_TEST.DBT_DVAD.Customer (CustomerID, Name, CityID, CountryID)
VALUES
    (18, 'Markus', 6, 2),    -- Berlin, Germany
    (19, 'Sabine', 6, 2),    -- Berlin, Germany
    (20, 'Andreas', 6, 2),   -- Berlin, Germany
    (21, 'Elena', 6, 2),     -- Berlin, Germany
    (22, 'Simon', 6, 2),     -- Berlin, Germany

    (23, 'Paul', 7, 2),      -- Hamburg, Germany
    (24, 'Lena', 7, 2),      -- Hamburg, Germany
    (25, 'Marko', 7, 2),     -- Hamburg, Germany

    (26, 'Michael', 8, 2),   -- Munich, Germany
    (27, 'Sarah', 8, 2),     -- Munich, Germany

    (28, 'Elisa', 9, 2),     -- Cologne, Germany
    (29, 'Felix', 9, 2);     -- Cologne, Germany

-- Insert statement for customers in other German cities using the same format
-- Add more customer data for other cities in Germany if needed

-- Insert statement for customers in the United Kingdom
INSERT INTO VAD_DBT_TEST.DBT_DVAD.Customer (CustomerID, Name, CityID, CountryID)
VALUES
    (30, 'William', 11, 3),   -- London, UK
    (31, 'Olivia', 11, 3),    -- London, UK
    (32, 'George', 11, 3),    -- London, UK
    (33, 'Charlotte', 11, 3), -- London, UK
    (34, 'Henry', 11, 3),     -- London, UK

    (35, 'James', 12, 3),     -- Manchester, UK
    (36, 'Sophia', 12, 3),    -- Manchester, UK
    (37, 'Edward', 12, 3),    -- Manchester, UK

    (38, 'Emily', 13, 3),     -- Birmingham, UK
    (39, 'David', 13, 3);     -- Birmingham, UK

-- Insert statement for customers in other UK cities using the same format
-- Add more customer data for other cities in the UK if needed


-- Insert statement for customers in Switzerland
INSERT INTO VAD_DBT_TEST.DBT_DVAD.Customer (CustomerID, Name, CityID, CountryID)
VALUES
    (40, 'Lukas', 16, 4),     -- Zurich, Switzerland
    (41, 'Sophia', 16, 4),    -- Zurich, Switzerland
    (42, 'Felix', 16, 4),     -- Zurich, Switzerland
    (43, 'Lena', 16, 4),      -- Zurich, Switzerland
    (44, 'Andreas', 16, 4),  -- Zurich, Switzerland

    (45, 'Emma', 17, 4),      -- Geneva, Switzerland
    (46, 'Max', 17, 4),       -- Geneva, Switzerland

    (47, 'Anna', 18, 4),      -- Bern, Switzerland

    (48, 'Noah', 19, 4),      -- Lausanne, Switzerland
    (49, 'Eva', 19, 4);       -- Lausanne, Switzerland

-- Insert statement for customers in other Swiss cities using the same format
-- Add more customer data for other cities in Switzerland if needed

-- Insert statement for customers in the United States
INSERT INTO VAD_DBT_TEST.DBT_DVAD.Customer (CustomerID, Name, CityID, CountryID)
VALUES
    (50, 'John', 26, 6),       -- New York, USA
    (51, 'Emily', 26, 6),      -- New York, USA
    (52, 'Michael', 26, 6),   -- New York, USA
    (53, 'Sophia', 26, 6),    -- New York, USA
    (54, 'Jacob', 26, 6),     -- New York, USA

    (55, 'Emma', 27, 6),      -- Los Angeles, USA
    (56, 'Matthew', 27, 6),   -- Los Angeles, USA
    (57, 'Ava', 27, 6),       -- Los Angeles, USA

    (58, 'William', 28, 6),   -- Chicago, USA
    (59, 'Olivia', 28, 6),    -- Chicago, USA
    
    (60, 'James', 29, 6),      -- Houston, USA
    (61, 'Lily', 29, 6),       -- Houston, USA
    (62, 'Benjamin', 29, 6),  -- Houston, USA

    (63, 'Ella', 30, 6),       -- Miami, USA
    (64, 'Jackson', 30, 6);   -- Miami, USA

-- Insert statement for customers in other US cities using the same format
-- Add more customer data for other cities in the USA if needed

-- Insert statement for customers in Canada (continued)
INSERT INTO VAD_DBT_TEST.DBT_DVAD.Customer (CustomerID, Name, CityID, CountryID)
VALUES
    (65, 'Ethan', 31, 7),       -- Toronto, Canada
    (66, 'Sophia', 31, 7),      -- Toronto, Canada
    (67, 'Alexander', 31, 7),   -- Toronto, Canada
    (68, 'Emily', 31, 7),       -- Toronto, Canada
    (69, 'Noah', 31, 7),        -- Toronto, Canada

    (70, 'Oliver', 32, 7),      -- Montreal, Canada
    (71, 'Isabella', 32, 7),   -- Montreal, Canada
    (72, 'Liam', 32, 7),       -- Montreal, Canada

    (73, 'Ava', 33, 7),         -- Vancouver, Canada
    (74, 'Lucas', 33, 7),       -- Vancouver, Canada

    (75, 'Ella', 34, 7),        -- Calgary, Canada
    (76, 'Mason', 34, 7);       -- Calgary, Canada

-- Insert statement for customers in other Canadian cities using the same format
-- Add more customer data for other cities in Canada if needed

-- Insert statement for customers in Cameroon
INSERT INTO VAD_DBT_TEST.DBT_DVAD.Customer (CustomerID, Name, CityID, CountryID)
VALUES
    (81, 'Félix', 36, 8),      -- Yaoundé, Cameroon
    (82, 'Sophie', 36, 8),     -- Yaoundé, Cameroon
    (83, 'Jean', 36, 8),       -- Yaoundé, Cameroon
    (84, 'Marie', 36, 8),      -- Yaoundé, Cameroon
    (85, 'Pierre', 36, 8),    -- Yaoundé, Cameroon

    (86, 'Jules', 37, 8),      -- Douala, Cameroon
    (87, 'Léonie', 37, 8),    -- Douala, Cameroon
    (88, 'Luc', 37, 8),        -- Douala, Cameroon

    (89, 'Antoinette', 38, 8), -- Bamenda, Cameroon
    (90, 'François', 38, 8),  -- Bamenda, Cameroon
    (91, 'Camille', 38, 8),   -- Bamenda, Cameroon

    (92, 'Thérèse', 39, 8),    -- Bafoussam, Cameroon
    (93, 'André', 39, 8),      -- Bafoussam, Cameroon
    (94, 'René', 39, 8),       -- Bafoussam, Cameroon

    (95, 'Isabelle', 40, 8),   -- Maroua, Cameroon
    (96, 'Gérard', 40, 8);     -- Maroua, Cameroon

    -- Insert statement for customers in South Africa
INSERT INTO VAD_DBT_TEST.DBT_DVAD.Customer (CustomerID, Name, CityID, CountryID)
VALUES
    (97, 'Lerato', 46, 10),       -- Johannesburg, South Africa
    (98, 'Sibusiso', 46, 10),     -- Johannesburg, South Africa
    (99, 'Nomvula', 46, 10),      -- Johannesburg, South Africa

    (100, 'Thabo', 47, 10),       -- Cape Town, South Africa
    (101, 'Zanele', 47, 10),      -- Cape Town, South Africa
    (102, 'Lwazi', 47, 10),       -- Cape Town, South Africa

    (103, 'Nokuthula', 48, 10),   -- Durban, South Africa
    (104, 'Siya', 48, 10),        -- Durban, South Africa

    (105, 'Mandla', 49, 10),      -- Pretoria, South Africa
    (106, 'Tshepo', 49, 10),      -- Pretoria, South Africa

    (107, 'Naledi', 50, 10),      -- Bloemfontein, South Africa
    (108, 'Kagiso', 50, 10);      -- Bloemfontein, South Africa

INSERT INTO VAD_DBT_TEST.DBT_DVAD.Customer (CustomerID, Name, CityID, CountryID)
VALUES
    (109, 'Yong', 51, 11),      -- Beijing, China
    (110, 'Li', 51, 11),        -- Beijing, China
    (111, 'Xia', 51, 11),       -- Beijing, China
    (112, 'Hui', 52, 11),       -- Shanghai, China
    (113, 'Wei', 52, 11),       -- Shanghai, China
    (114, 'Jing', 52, 11),      -- Shanghai, China
    (115, 'Xin', 53, 11),       -- Guangzhou, China
    (116, 'Ming', 53, 11),      -- Guangzhou, China
    (117, 'Fei', 54, 11),       -- Shenzhen, China
    (118, 'Ling', 54, 11),      -- Shenzhen, China
    (119, 'Chen', 55, 11),      -- Chengdu, China
    (120, 'Xuan', 55, 11),      -- Chengdu, China
    (121, 'Ying', 55, 11);      -- Chengdu, China
-- Insert statement for customers in India
INSERT INTO VAD_DBT_TEST.DBT_DVAD.Customer (CustomerID, Name, CityID, CountryID)
VALUES
    (121, 'Aarav', 61, 12),      -- Mumbai, India
    (122, 'Riya', 61, 12),       -- Mumbai, India
    (123, 'Arjun', 61, 12),      -- Mumbai, India
    (124, 'Ananya', 61, 12),    -- Mumbai, India

    (125, 'Aryan', 62, 12),      -- New Delhi, India
    (126, 'Isha', 62, 12),       -- New Delhi, India
    (127, 'Advait', 62, 12),    -- New Delhi, India

    (128, 'Ishan', 63, 12),      -- Bangalore, India
    (129, 'Siya', 63, 12),       -- Bangalore, India

    (130, 'Rudra', 64, 12),      -- Kolkata, India
    (131, 'Avani', 64, 12);     -- Kolkata, India

-- Insert statement for customers in Japan
INSERT INTO VAD_DBT_TEST.DBT_DVAD.Customer (CustomerID, Name, CityID, CountryID)
VALUES
    (132, 'Hiroshi', 65, 13),    -- Tokyo, Japan
    (133, 'Yuki', 65, 13),       -- Tokyo, Japan
    (134, 'Akira', 65, 13),      -- Tokyo, Japan

    (135, 'Haruka', 66, 13),     -- Osaka, Japan
    (136, 'Takumi', 66, 13),     -- Osaka, Japan
    (137, 'Rina', 66, 13),       -- Osaka, Japan

    (138, 'Sora', 67, 13),       -- Kyoto, Japan
    (139, 'Ren', 67, 13),        -- Kyoto, Japan
    (140, 'Aoi', 67, 13),        -- Kyoto, Japan

    (141, 'Yuuto', 68, 13),      -- Sapporo, Japan
    (142, 'Riko', 68, 13),       -- Sapporo, Japan

    (143, 'Hina', 69, 13),       -- Nagoya, Japan
    (144, 'Kaito', 69, 13);      -- Nagoya, Japan
    
-- Insert statement for customers in Brazil
INSERT INTO VAD_DBT_TEST.DBT_DVAD.Customer (CustomerID, Name, CityID, CountryID)
VALUES
    (145, 'Gabriela', 66, 14),   -- Sao Paulo, Brazil
    (146, 'João', 66, 14),       -- Sao Paulo, Brazil
    (147, 'Maria', 66, 14),      -- Sao Paulo, Brazil

    (148, 'Pedro', 67, 14),      -- Rio de Janeiro, Brazil
    (149, 'Ana', 67, 14),        -- Rio de Janeiro, Brazil
    (150, 'Carlos', 67, 14),     -- Rio de Janeiro, Brazil

    (151, 'Lucas', 68, 14),      -- Brasilia, Brazil
    (152, 'Julia', 68, 14),      -- Brasilia, Brazil
    (153, 'Fernanda', 68, 14),  -- Brasilia, Brazil

    (154, 'Mariana', 69, 14),    -- Salvador, Brazil
    (155, 'Luis', 69, 14),       -- Salvador, Brazil

    (156, 'Andre', 70, 14),      -- Fortaleza, Brazil
    (157, 'Carla', 70, 14);      -- Fortaleza, Brazil

-- Insert statement for customers in Argentina
INSERT INTO VAD_DBT_TEST.DBT_DVAD.Customer (CustomerID, Name, CityID, CountryID)
VALUES
    (158, 'Santiago', 71, 15),  -- Buenos Aires, Argentina
    (159, 'Lucia', 71, 15),     -- Buenos Aires, Argentina
    (160, 'Diego', 71, 15),     -- Buenos Aires, Argentina

    (161, 'Carmen', 72, 15),    -- Cordoba, Argentina
    (162, 'Manuel', 72, 15),    -- Cordoba, Argentina

    (163, 'Carlos', 73, 15),    -- Rosario, Argentina
    (164, 'Ana', 73, 15);       -- Rosario, Argentina


SELECT * FROM VAD_DBT_TEST.DBT_DVAD.Customer;   



-- Insert statement for Sales data
INSERT INTO VAD_DBT_TEST.DBT_DVAD.Sales (SaleID, CustomerID, ProductID, SaleDate, Quantity, SaleAmount)
VALUES
    (1, 1, 1, '2021-02-01', 3, 50.00),
    (2, 2, 2, '2021-03-05', 2, 30.00),
    (3, 3, 3, '2021-04-10', 4, 75.00),
    (4, 4, 4, '2021-05-15', 1, 15.00),
    (5, 5, 5, '2021-06-20', 5, 90.00),
    (6, 6, 6, '2021-07-25', 2, 35.00),

    (7, 7, 7, '2021-02-05', 3, 50.00),
    (8, 8, 8, '2021-03-10', 2, 30.00),
    (9, 9, 9, '2021-04-15', 4, 75.00),
    (10, 10, 10, '2021-05-20', 1, 15.00),
    (11, 11, 11, '2021-06-25', 5, 90.00),
    (12, 12, 12, '2021-07-30', 2, 35.00),
        -- Continue Sales data for other customers
    (13, 13, 13, '2021-08-04', 3, 50.00),
    (14, 14, 14, '2021-09-09', 2, 30.00),
    (15, 15, 15, '2021-10-14', 4, 75.00),
    (16, 16, 16, '2022-01-15', 1, 15.00),
    (17, 17, 17, '2022-02-20', 5, 90.00),
    (18, 18, 18, '2022-03-25', 2, 35.00),

    (19, 19, 19, '2022-08-04', 3, 50.00),
    (20, 20, 20, '2022-09-09', 2, 30.00),
    (21, 21, 21, '2022-10-14', 4, 75.00),
    (22, 22, 22, '2023-01-15', 1, 15.00),
    (23, 23, 23, '2023-02-20', 5, 90.00),
    (24, 24, 24, '2023-03-25', 2, 35.00),

    (25, 25, 25, '2023-08-04', 3, 50.00),
    (26, 26, 26, '2023-09-09', 2, 30.00),
    (27, 27, 27, '2023-10-14', 4, 75.00),
    (28, 28, 28, '2023-10-15', 1, 15.00),
        -- Continue Sales data for other customers
    (29, 29, 29, '2023-10-16', 2, 30.00),
    (30, 30, 30, '2023-10-17', 3, 45.00),
    (31, 31, 31, '2023-10-18', 1, 15.00),
    (32, 32, 32, '2023-10-19', 4, 60.00),

    (33, 33, 33, '2023-10-16', 2, 30.00),
    (34, 34, 34, '2023-10-17', 3, 45.00),
    (35, 35, 35, '2023-10-18', 1, 15.00),
    (36, 36, 36, '2023-10-19', 4, 60.00),
    
    (37, 37, 37, '2023-10-16', 2, 30.00),
    (38, 38, 38, '2023-10-17', 3, 45.00),
    (39, 39, 39, '2023-10-18', 1, 15.00),
    (40, 40, 40, '2023-10-19', 4, 60.00),
    
    (41, 41, 41, '2023-10-16', 2, 30.00),
    (42, 42, 42, '2023-10-17', 3, 45.00),
    (43, 43, 43, '2023-10-18', 1, 15.00),
    (44, 44, 44, '2023-10-19', 4, 60.00),
    -- Continue Sales data for other customers
    (45, 45, 45, '2023-10-20', 3, 45.00),
    (46, 46, 46, '2023-10-21', 2, 30.00),

    (47, 1, 11, '2023-10-20', 1, 15.00),
    (48, 2, 12, '2023-10-21', 5, 75.00),
    (49, 3, 13, '2023-10-22', 3, 45.00),
    (50, 4, 14, '2023-10-23', 2, 30.00),
    (51, 5, 15, '2023-10-24', 4, 60.00),
    (52, 6, 16, '2023-10-25', 3, 45.00),

    (53, 7, 11, '2023-10-22', 2, 30.00),
    (54, 8, 12, '2023-10-23', 1, 15.00),
    (55, 9, 13, '2023-10-24', 4, 60.00),

    (56, 10, 14, '2023-10-23', 5, 75.00),
    (57, 11, 15, '2023-10-24', 2, 30.00),
    (58, 12, 16, '2023-10-25', 3, 45.00),
    -- Continue Sales data for other customers
    (59, 13, 11, '2023-10-22', 2, 30.00),
    (60, 14, 12, '2023-10-23', 1, 15.00),
    (61, 15, 13, '2023-10-24', 4, 60.00),
    (62, 16, 14, '2023-10-25', 5, 75.00),
    (63, 17, 15, '2023-10-26', 2, 30.00),
    (64, 18, 16, '2023-10-27', 3, 45.00),

    (65, 19, 11, '2023-10-28', 2, 30.00),
    (66, 20, 12, '2023-10-29', 3, 45.00),
    (67, 21, 13, '2023-10-30', 1, 15.00),
    (68, 22, 14, '2023-10-31', 4, 60.00),
    -- Continue Sales data for other customers
    (69, 23, 15, '2023-10-22', 3, 45.00),
    (70, 24, 16, '2023-10-23', 2, 30.00),
    (71, 25, 11, '2023-10-24', 4, 60.00),
    (72, 26, 12, '2023-10-25', 5, 75.00),
    (73, 27, 13, '2023-10-26', 2, 30.00),
    (74, 28, 14, '2023-10-27', 3, 45.00),
    
    (75, 29, 15, '2023-10-28', 2, 30.00),
    (76, 30, 16, '2023-10-29', 3, 45.00),
    (77, 31, 11, '2023-10-30', 1, 15.00),
    (78, 32, 12, '2023-10-31', 4, 60.00),
    (79, 33, 13, '2023-11-01', 3, 45.00),
    (80, 34, 14, '2023-11-02', 2, 30.00),
    -- Continue Sales data for other customers
    (81, 35, 15, '2023-11-03', 3, 45.00),
    (82, 36, 16, '2023-11-04', 2, 30.00),
    (83, 37, 11, '2023-11-05', 4, 60.00),
    (84, 38, 12, '2023-11-06', 5, 75.00),
    (85, 39, 13, '2023-11-07', 2, 30.00),
    (86, 40, 14, '2023-11-08', 3, 45.00),
    
    (87, 41, 15, '2023-11-09', 2, 30.00),
    (88, 42, 16, '2023-11-10', 3, 45.00),
    (89, 43, 11, '2023-11-11', 1, 15.00),
    (90, 44, 12, '2023-11-12', 4, 60.00),
    (91, 45, 13, '2023-11-13', 3, 45.00),
    (92, 46, 14, '2023-11-14', 2, 30.00),
    -- Continue Sales data for other customers
    (93, 47, 15, '2023-11-15', 3, 45.00),
    (94, 48, 16, '2023-11-16', 2, 30.00),
    (95, 49, 11, '2023-11-17', 4, 60.00),
    (96, 50, 12, '2023-11-18', 5, 75.00),
    (97, 51, 13, '2023-11-19', 2, 30.00),
    (98, 52, 14, '2023-11-20', 3, 45.00),
    (99, 53, 15, '2023-11-21', 2, 30.00),
    (100, 54, 16, '2023-11-22', 3, 45.00),
    -- Continue Sales data for other customers
    (101, 55, 11, '2023-11-23', 1, 15.00),
    (102, 56, 12, '2023-11-24', 4, 60.00),
    (103, 57, 13, '2023-11-25', 3, 45.00),
    (104, 58, 14, '2023-11-26', 2, 30.00),
    (105, 59, 15, '2023-11-27', 4, 60.00),
    (106, 60, 16, '2023-11-28', 5, 75.00),
    (107, 61, 11, '2023-11-29', 2, 30.00),
    (108, 62, 12, '2023-11-30', 3, 45.00),
    -- Continue Sales data for other customers
    (109, 63, 13, '2023-12-01', 1, 15.00),
    (110, 64, 14, '2023-12-02', 4, 60.00),
    (111, 65, 15, '2023-12-03', 3, 45.00),
    (112, 66, 16, '2023-12-04', 2, 30.00),
    (113, 67, 11, '2023-12-05', 4, 60.00),
    (114, 68, 12, '2023-12-06', 5, 75.00),
    (115, 69, 13, '2023-12-07', 2, 30.00),
    (116, 70, 14, '2023-12-08', 3, 45.00),
    (117, 71, 15, '2023-12-09', 2, 30.00),
    (118, 72, 16, '2023-12-10', 3, 45.00),
    (119, 73, 11, '2023-12-11', 1, 15.00),
    (120, 74, 12, '2023-12-12', 4, 60.00),
    (121, 75, 13, '2023-12-13', 3, 45.00),
    (122, 76, 14, '2023-12-14', 2, 30.00),
    (123, 77, 15, '2023-12-15', 4, 60.00),
    (124, 78, 16, '2023-12-16', 5, 75.00),
    (125, 79, 11, '2023-12-17', 2, 30.00),
    (126, 80, 12, '2023-12-18', 3, 45.00),
    (127, 81, 13, '2023-12-19', 1, 15.00),
    (128, 82, 14, '2023-12-20', 4, 60.00),
    -- Continue Sales data for other customers
    (129, 83, 15, '2023-12-21', 2, 30.00),
    (130, 84, 16, '2023-12-22', 3, 45.00),
    (131, 85, 11, '2023-12-23', 1, 15.00),
    (132, 86, 12, '2023-12-24', 4, 60.00),
    (133, 87, 13, '2023-12-25', 3, 45.00),
    (134, 88, 14, '2023-12-26', 2, 30.00),
    (135, 89, 15, '2023-12-27', 4, 60.00),
    (136, 90, 16, '2023-12-28', 5, 75.00),
    (137, 91, 11, '2023-12-29', 2, 30.00),
    (138, 92, 12, '2023-12-30', 3, 45.00),
    (139, 93, 13, '2023-12-31', 1, 15.00),
    (140, 94, 14, '2024-01-01', 4, 60.00),
    (141, 95, 15, '2024-01-02', 3, 45.00),
    (142, 96, 16, '2024-01-03', 2, 30.00),
    (143, 97, 11, '2024-01-04', 4, 60.00),
    (144, 98, 12, '2024-01-05', 5, 75.00),
    (145, 99, 13, '2024-01-06', 2, 30.00),
    (146, 100, 14, '2024-01-07', 3, 45.00),
    (147, 101, 15, '2024-01-08', 2, 30.00),
    (148, 102, 16, '2024-01-09', 3, 45.00);

SELECT * FROM VAD_DBT_TEST.DBT_DVAD.Sales;    