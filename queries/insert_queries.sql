INSERT INTO Features (name, description, data_type) VALUES
    ('Feature1', 'Description of Feature 1', 'integer'),
    ('Feature2', 'Description of Feature 2', 'float'),
    ('Feature3', 'Description of Feature 3', 'string');


INSERT INTO Models (name, description) VALUES
    ('Model_A', 'Description of Model A'),
    ('Model_B', 'Description of Model B');


INSERT INTO ModelFeatures (model_id, feature_id) VALUES
(1, 1),
(1, 2),
(2, 1),
(2, 3);


INSERT INTO FeatureValues (feature_id, entity_id, value, timestamp) VALUES
(1, 1001, '25'),
(2, 1001, '50000'),
(3, 1002, 'Sample Value');
