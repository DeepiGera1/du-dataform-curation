#!/bin/sh
# Exit immediately if a command exits with a non-zero status
set -e

echo "--- Starting Dataform Curation Job ---"

# 1. Install dependencies (ensures the environment is fresh)
dataform install

# 2. Compile the project to catch any logic errors before running
echo "Compiling Dataform project..."
dataform compile

# 3. Run the Dataform project
# You can pass additional flags here if needed (e.g., --tags, --vars)
echo "Executing Dataform Run in BigQuery..."
dataform run

echo "--- Dataform Job Completed Successfully ---"