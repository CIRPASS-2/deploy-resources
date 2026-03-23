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

CREATE DATABASE registry;
CREATE DATABASE validator;
CREATE DATABASE portal;

GRANT ALL PRIVILEGES ON DATABASE registry TO postgres;
GRANT ALL PRIVILEGES ON DATABASE validator TO postgres;
GRANT ALL PRIVILEGES ON DATABASE portal TO postgres;
