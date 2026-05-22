"""
conftest.py
────────────
Pytest configuration and shared fixtures for all test modules.
"""

import pytest
import sys
import os

# Add project root to path so all modules are importable during tests
sys.path.insert(0, os.path.dirname(__file__))


# ── Shared sample data ───────────────────────────────────────────────────────

@pytest.fixture(scope="session")
def sample_job_mern():
    """Sample MERN Stack Developer job spec."""
    return {
        "job_id"               : "JOB_mern001",
        "job_title"            : "MERN Stack Developer",
        "required_skills"      : ["Python", "React", "Node.js", "MongoDB", "AWS"],
        "min_experience_years" : 3,
        "max_experience_years" : 8,
        "min_education"        : "Bachelors",
        "min_score"            : 60,
        "language"             : "English",
        "voice_gender"         : "Female",
    }


@pytest.fixture(scope="session")
def sample_candidate_strong():
    """Strong candidate that should pass ATS."""
    return {
        "email"            : "alex@example.com",
        "phone"            : "+91 9876543210",
        "name"             : "Alex Kumar",
        "skills"           : ["Python", "React", "Node.js", "MongoDB", "AWS"],
        "experience_years" : 5,
        "education"        : "Bachelors",
        "parse_status"     : "success",
    }


@pytest.fixture(scope="session")
def sample_candidate_weak():
    """Weak candidate that should fail ATS."""
    return {
        "email"            : "fresher@example.com",
        "phone"            : "+91 9000000001",
        "name"             : "Fresh Grad",
        "skills"           : ["Python"],
        "experience_years" : 0,
        "education"        : "Diploma",
        "parse_status"     : "success",
    }
