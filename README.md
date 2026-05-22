# 🤖 Zecpath AI System

> AI-powered hiring intelligence engine for the Zecpath Job Portal.  
> Automates resume screening, voice calls, video interviews, behavioral analysis, and offer generation — across 100 phases.

---

## 📋 Project Overview

Zecpath AI is a modular, microservices-style AI backend that powers the full hiring lifecycle — from parsing a candidate's resume to generating their offer letter — **without human intervention**.

This repository contains all AI engines used in the Zecpath platform.

---

## 🗂️ Repository Structure

```
zecpath_ai/
│
├── data/                        # Data storage (never commit real data)
│   ├── resumes/                 # Uploaded resume files
│   ├── transcripts/             # AI call & interview transcripts
│   ├── call_logs/               # Outbound call records
│   └── test_data/               # Sample data for testing
│
├── parsers/                     # Resume parsing module
│   ├── __init__.py
│   └── resume_parser.py         # PDF & DOCX text extraction
│
├── ats_engine/                  # ATS Scoring Engine (Phase 2)
│   ├── __init__.py
│   └── ats_scorer.py            # Skill, experience, education scoring
│
├── screening_ai/                # AI Voice Screening (Phase 3–4)
│   ├── __init__.py
│   └── call_trigger.py          # Call eligibility & trigger logic
│
├── interview_ai/                # Interview Intelligence (Phase 11–50)
│   └── __init__.py
│
├── scoring/                     # Final Decision Engine (Phase 20–88)
│   ├── __init__.py
│   └── decision_engine.py       # Cross-round score aggregation
│
├── utils/                       # Shared utilities
│   ├── __init__.py
│   ├── logger.py                # Centralized logging system
│   ├── config.py                # Environment variable loader
│   └── helpers.py               # Reusable helper functions
│
├── tests/                       # All test files
│   ├── test_parsers/
│   │   └── test_resume_parser.py
│   ├── test_ats/
│   │   └── test_ats_scorer.py
│   ├── test_screening/
│   ├── test_interview/
│   └── test_scoring/
│       └── test_decision_engine.py
│
├── logs/                        # Auto-generated log files
├── docs/                        # Architecture docs & diagrams
│
├── conftest.py                  # Pytest shared fixtures
├── pytest.ini                   # Pytest configuration
├── requirements.txt             # Python dependencies
├── .env.example                 # Environment variable template
├── .gitignore                   # Git ignore rules
├── setup_env.sh                 # One-command setup script
└── README.md                    # This file
```

---

## ⚙️ Setup Instructions

### 1. Clone the Repository

```bash
git clone https://github.com/your-username/zecpath-ai.git
cd zecpath-ai
```

### 2. Run Setup Script (Recommended)

```bash
bash setup_env.sh
```

This will:
- Create a Python virtual environment
- Install all dependencies
- Create your `.env` file from the template
- Run all tests to verify the setup

### 3. Manual Setup (Alternative)

```bash
# Create and activate virtual environment
python3 -m venv venv
source venv/bin/activate          # macOS/Linux
# venv\Scripts\activate           # Windows

# Install dependencies
pip install -r requirements.txt

# Create environment file
cp .env.example .env
# → Fill in your API keys in .env
```

---

## 🔐 Environment Variables

Copy `.env.example` to `.env` and fill in your values:

```env
OPENAI_API_KEY=your_key_here
DB_HOST=localhost
DB_NAME=zecpath_db
MONGO_URI=mongodb://localhost:27017
AWS_S3_BUCKET=zecpath-resumes
```

> ⚠️ **Never commit your `.env` file to GitHub.**

---

## 🧪 Running Tests

```bash
# Run all tests
pytest tests/ -v

# Run a specific module
pytest tests/test_ats/ -v

# Run with coverage report
pytest tests/ --cov=. --cov-report=html
```

---

## 📦 Key Dependencies

| Library | Purpose |
|---|---|
| `openai` | GPT-based AI processing |
| `langchain` | AI chain orchestration |
| `pdfminer.six` | PDF resume parsing |
| `python-docx` | DOCX resume parsing |
| `scikit-learn` | ML scoring models |
| `fastapi` | REST API server |
| `loguru` | Structured logging |
| `pytest` | Unit & integration testing |
| `boto3` | AWS S3 file storage |

---

## 🏗️ AI Module Responsibilities

| Module | Phase | Responsibility |
|---|---|---|
| `parsers/resume_parser.py` | Phase 2 | Extract text & fields from resume files |
| `ats_engine/ats_scorer.py` | Phase 2 | Score & rank candidates against job requirements |
| `screening_ai/call_trigger.py` | Phase 3–4 | Trigger AI outbound screening calls |
| `interview_ai/` | Phase 11–50 | HR & technical video interview intelligence |
| `scoring/decision_engine.py` | Phase 20–88 | Aggregate all scores → final hire/hold/reject |

---

## 📝 Logging

All AI activity is automatically logged to the `logs/` folder:

| Log File | Contains |
|---|---|
| `zecpath_YYYY-MM-DD.log` | All activity (DEBUG and above) |
| `errors_YYYY-MM-DD.log` | Errors only with stack traces |
| `ai_activity_YYYY-MM-DD.log` | AI audit trail (INFO and above) |

```python
# Using the logger in any module
from utils.logger import setup_logger
log = setup_logger("my_module")
log.info("Processing started")
log.error("Something failed")
```

---

## 🤝 Code Standards

- **Language**: Python 3.11+
- **Style**: PEP 8, snake_case for variables/functions, PascalCase for classes
- **Docstrings**: Google-style docstrings on every class and method
- **Type hints**: All function parameters and return types annotated
- **Tests**: Every module must have a corresponding test file in `tests/`
- **Logging**: Use `setup_logger()` — never use `print()` in production code

---

## 👤 Author

**Zecpath AI Development Team**  
Internship Project — AI Developer Role  
Platform: Zecpath AI-Powered Job Portal

---

*PRD Reference: Zecpath Phase 1–100 (6 Parts)*
