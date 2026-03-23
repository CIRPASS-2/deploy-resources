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

\c registry

CREATE SEQUENCE IF NOT EXISTS dpp_metadata_seq;

    CREATE TABLE IF NOT EXISTS dpp_metadata (
        id          BIGINT PRIMARY KEY DEFAULT nextval('dpp_metadata_seq'),
        registry_id VARCHAR(36) NOT NULL,
        created_at  TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
        modified_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
        metadata    JSONB NOT NULL
    );

    CREATE SEQUENCE IF NOT EXISTS json_schema_seq;

    CREATE TABLE IF NOT EXISTS json_schemas (
        id          BIGINT PRIMARY KEY DEFAULT nextval('json_schema_seq'),
        created_at  TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
        data_schema JSONB NOT NULL
    );
