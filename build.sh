#!/bin/bash

# Build script for Render deployment

echo "Starting build process..."

# Install dependencies
echo "Installing dependencies..."
npm install

# Check if client directory exists
echo "Checking project structure..."
ls -la
ls -la client/

# Build the client (frontend)
echo "Building client..."
npm run build

# Verify build output
echo "Verifying build output..."
ls -la dist/
ls -la dist/public/

# Push database schema
echo "Pushing database schema..."
npm run db:push --force

echo "Build completed successfully!"