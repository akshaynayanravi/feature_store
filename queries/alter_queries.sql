ALTER TABLE FeatureValues
ADD CONSTRAINT fk_feature_id
FOREIGN KEY (feature_id) REFERENCES Features(feature_id) ON DELETE CASCADE;

ALTER TABLE ModelFeatures
ADD CONSTRAINT fk_model_id
FOREIGN KEY (model_id) REFERENCES Models(model_id) ON DELETE CASCADE;

ALTER TABLE ModelFeatures
ADD CONSTRAINT fk_feature_id
FOREIGN KEY (feature_id) REFERENCES Features(feature_id) ON DELETE CASCADE;

ALTER TABLE FeatureValues
ADD INDEX idx_feature_id (feature_id);  -- Index on feature_id for quick lookups

ALTER TABLE ModelFeatures
ADD INDEX idx_model_id (model_id),  -- Index on model_id for quick lookups
ADD INDEX idx_feature_id (feature_id);  -- Index on feature_id for quick lookups

ALTER TABLE Features
ADD INDEX idx_name (name);  -- Index on the name for quick lookups

ALTER TABLE Models
ADD INDEX idx_name (name);  -- Index on the name for quick lookups
