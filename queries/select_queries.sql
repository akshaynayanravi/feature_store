-- To get all features used by a specific model
SELECT f.name, f.description, f.data_type
FROM Features f
JOIN ModelFeatures mf ON f.feature_id = mf.feature_id
WHERE mf.model_id = 1;


-- To find the latest feature values for a given feature
SELECT feature_id, feature_value, created_at
FROM FeatureValues
WHERE feature_id = 1
ORDER BY created_at DESC
LIMIT 1;


-- To get a summary of how many features each model uses
SELECT m.name AS model_name, COUNT(mf.feature_id) AS feature_count
FROM Models m
JOIN ModelFeatures mf ON m.model_id = mf.model_id
GROUP BY m.model_id;


-- To list features that haven't been updated in the last 24 hours
SELECT f.name
FROM Features f
LEFT JOIN FeatureValues fv ON f.id = fv.feature_id
GROUP BY f.feature_id
HAVING MAX(fv.timestamp) < NOW() - INTERVAL 1 DAY OR MAX(fv.timestamp) IS NULL;
