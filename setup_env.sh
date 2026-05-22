#!/bin/bash
# ─────────────────────────────────────────────────────────────
# Zecpath AI – Environment Setup Script
# Run this once to set up your local development environment
# Usage: bash setup_env.sh
# ─────────────────────────────────────────────────────────────

echo ""
echo "╔══════════════════════════════════════════╗"
echo "║    Zecpath AI – Environment Setup        ║"
echo "╚══════════════════════════════════════════╝"
echo ""

# ── Step 1: Check Python version ────────────────────────────
echo "▶ Checking Python version..."
python_version=$(python3 --version 2>&1)
echo "  Found: $python_version"

# ── Step 2: Create virtual environment ──────────────────────
echo ""
echo "▶ Creating virtual environment (venv)..."
python3 -m venv venv
echo "  ✅ Virtual environment created at ./venv"

# ── Step 3: Activate virtual environment ────────────────────
echo ""
echo "▶ Activating virtual environment..."
source venv/bin/activate
echo "  ✅ Virtual environment activated"

# ── Step 4: Upgrade pip ──────────────────────────────────────
echo ""
echo "▶ Upgrading pip..."
pip install --upgrade pip --quiet
echo "  ✅ pip upgraded"

# ── Step 5: Install dependencies ────────────────────────────
echo ""
echo "▶ Installing dependencies from requirements.txt..."
pip install -r requirements.txt --quiet
echo "  ✅ All dependencies installed"

# ── Step 6: Create .env from template ───────────────────────
echo ""
if [ ! -f ".env" ]; then
    cp .env.example .env
    echo "  ✅ .env file created from template"
    echo "  ⚠️  Please fill in your API keys in .env"
else
    echo "  ℹ️  .env already exists, skipping"
fi

# ── Step 7: Create .gitkeep files to preserve empty dirs ────
echo ""
echo "▶ Setting up data directories..."
touch data/resumes/.gitkeep
touch data/transcripts/.gitkeep
touch data/call_logs/.gitkeep
touch data/test_data/.gitkeep
touch logs/.gitkeep
echo "  ✅ Data directories ready"

# ── Step 8: Run tests to verify setup ───────────────────────
echo ""
echo "▶ Running tests to verify setup..."
pytest tests/ --tb=short -q
echo ""

echo "╔══════════════════════════════════════════╗"
echo "║  ✅ Setup Complete!                       ║"
echo "║                                           ║"
echo "║  Activate env: source venv/bin/activate   ║"
echo "║  Run tests:    pytest tests/ -v           ║"
echo "║  View logs:    tail -f logs/zecpath_*.log ║"
echo "╚══════════════════════════════════════════╝"
