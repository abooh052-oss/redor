#!/bin/bash

# Build script for Render deployment

echo "Starting build process..."

# Install dependencies
npm install

# Build the client (frontend)
echo "Building client..."
npm run build

# Push database schema
echo "Pushing database schema..."
npm run db:push

echo "Build completed successfully!"