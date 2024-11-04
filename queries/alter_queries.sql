ALTER TABLE feature_values
ADD CONSTRAINT fk_fv_feature_id
FOREIGN KEY (feature_id) REFERENCES features(id) ON DELETE CASCADE;

ALTER TABLE model_features
ADD CONSTRAINT fk_mf_model_id
FOREIGN KEY (model_id) REFERENCES models(id) ON DELETE CASCADE;

ALTER TABLE model_features
ADD CONSTRAINT fk_mf_feature_id
FOREIGN KEY (feature_id) REFERENCES features(id) ON DELETE CASCADE;

ALTER TABLE feature_values
ADD INDEX idx_feature_id (feature_id);  -- Index on feature_id for quick lookups

ALTER TABLE model_features
ADD INDEX idx_model_id (model_id),  -- Index on model_id for quick lookups
ADD INDEX idx_feature_id (feature_id);  -- Index on feature_id for quick lookups

ALTER TABLE features
ADD INDEX idx_name (name);  -- Index on the name for quick lookups

ALTER TABLE models
ADD INDEX idx_name (name);  -- Index on the name for quick lookups
