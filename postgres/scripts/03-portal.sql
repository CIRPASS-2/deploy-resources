-- Copyright 2024-2027 CIRPASS-2
--
-- Licensed under the Apache License, Version 2.0 (the "License");
-- you may not use this file except in compliance with the License.
-- You may obtain a copy of the License at
--
--     http://www.apache.org/licenses/LICENSE-2.0
--
-- Unless required by applicable law or agreed to in writing, software
-- distributed under the License is distributed on an "AS IS" BASIS,
-- WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
-- See the License for the specific language governing permissions and
-- limitations under the License.

\c portal

CREATE TABLE IF NOT EXISTS extraction_registry (
    id BIGSERIAL PRIMARY KEY,
    processed_until TIMESTAMP
);

CREATE TABLE IF NOT EXISTS extraction_failures (
    id BIGSERIAL PRIMARY KEY,
    registry_id VARCHAR(36) UNIQUE NOT NULL,
    retrials INTEGER NOT NULL DEFAULT(0)
);

CREATE TABLE IF NOT EXISTS dpp_data (
    id BIGSERIAL PRIMARY KEY,
    upi VARCHAR UNIQUE NOT NULL,
    live_url VARCHAR(1000),
    search_data JSONB NOT NULL
);

CREATE SEQUENCE IF NOT EXISTS json_configs_seq;

CREATE TABLE IF NOT EXISTS json_configs (id BIGINT PRIMARY KEY DEFAULT nextval('json_configs_seq'),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    data_config JSONB NOT NULL
);


