
🚀 Zecpath AI System
AI-Powered Job Portal & Automated Hiring Assistant
📌 Overview
Zecpath AI System is a modular, scalable, and intelligent recruitment platform designed to automate the entire hiring lifecycle using Artificial Intelligence.

The system integrates multiple AI engines such as:

Resume Parsing (ATS)
AI Screening (Voice-based)
Interview Intelligence
Behavior Analysis
Decision & Scoring Engine
🎯 Goal: Reduce hiring time, eliminate manual effort, and improve candidate selection accuracy.

🎯 Objectives
Automate end-to-end recruitment process
Reduce human bias in hiring
Enable scalable hiring for companies
Provide real-time candidate evaluation
Build a microservices-based AI ecosystem
🏗️ System Architecture
The system follows a microservices architecture:

Frontend → Backend API → AI Services → Storage → Queue System
🔹 AI Services
ATS AI Service
Screening AI Service
Interview AI Service
Behavior Analysis Service
Decision & Scoring Service
📁 Project Structure
zecpath-ai-system/
│
├── data/                 # Sample datasets, resumes
├── parsers/              # Resume parsing logic (NLP)
├── ats_engine/           # ATS scoring & ranking engine
├── screening_ai/         # AI voice screening module
├── interview_ai/         # Interview evaluation logic
├── scoring/              # Final decision engine
├── utils/                # Helper functions & logger
├── tests/                # Unit tests
│
├── logs/                 # Log files (auto-generated)
├── models/               # Trained AI models
│
├── main.py               # FastAPI entry point
├── config.py             # Configurations
├── requirements.txt      # Dependencies
├── README.md             # Documentation
└── .gitignore
🤖 AI Modules Explained
1. ATS Engine
Parses resumes using NLP
Extracts skills, education, experience
Calculates matching score
Input: Resume + Job Description Output: Score + Parsed Data

2. Screening AI
Conducts automated voice interviews
Converts speech to text
Evaluates responses
Input: Candidate phone + questions Output: Transcript + Score

3. Interview AI
Conducts HR & technical interviews
Evaluates knowledge and communication
Input: Candidate profile Output: Interview score + report

4. Behavior Analysis AI
Detects sentiment and tone
Evaluates confidence level
Input: Audio + transcript Output: Behavior score

5. Decision & Scoring Engine
Combines all scores
Generates final decision
Input: All AI scores Output: Select / Reject / Hold

🔄 Data Flow
Resume Upload → ATS AI  
→ ATS Score Stored in DB  
→ Shortlisted → Screening AI  
→ Screening Results → Interview AI  
→ Behavior Analysis → Scoring Engine  
→ Final Decision → Backend → Frontend  
🔐 Security & Compliance
Secure file handling (resumes, audio)
Data encryption (future scope)
Consent-based processing (GDPR-style)
Role-based access (Admin / Recruiter)
⚙️ Dependencies (Core)
FastAPI
Uvicorn
NumPy
Pandas
Scikit-learn
Transformers
SpeechRecognition
Loguru
PyTest
▶️ Setup & Installation
# Create virtual environment
python -m venv venv

# Activate environment
venv\Scripts\activate   # Windows
source venv/bin/activate  # Linux/Mac

# Install dependencies
pip install -r requirements.txt

# Run the application
python main.py
🧪 Testing
pytest tests/
🧾 Conclusion
Zecpath AI System is a complete intelligent hiring solution that combines multiple AI technologies to automate recruitment.

Its modular design ensures: ✔ Scalability ✔ Maintainability ✔ Real-world applicability

👨‍💻 Author
Rohith k AI Developer

🙏 Acknowledgment
This project is developed as part of an internship at Zecser Business LLP and as an AI system design exercise to understand real-world recruitment automation.


