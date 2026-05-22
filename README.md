# 🚀 Zecpath AI System  
### AI-Powered Job Portal & Automated Hiring Assistant  

---

## 📌 Overview

**Zecpath AI System** is a modular, scalable, and intelligent recruitment platform designed to automate the complete hiring lifecycle using Artificial Intelligence.

The platform integrates multiple AI engines to streamline candidate evaluation, automate interviews, analyze behavior, and generate hiring decisions with minimal manual effort.

---

## 🎯 Goal

Reduce hiring time, eliminate manual effort, and improve candidate selection accuracy using AI-driven automation.

---

# ✨ Features

| Feature | Description |
|---|---|
| 📄 AI Resume Parsing (ATS) | Extracts skills, education, and experience |
| 🎙️ Automated Voice Screening | AI-powered screening interviews |
| 🧠 Interview Intelligence | HR & technical interview evaluation |
| 😊 Behavior Analysis | Sentiment and confidence analysis |
| 📊 Decision Engine | Final candidate scoring & ranking |
| ⚡ Real-Time Evaluation | Instant AI-based assessment |
| 🏗️ Microservices Architecture | Scalable modular design |
| 🔐 Secure Workflow | Secure recruitment pipeline |

---

# 🎯 Objectives

- Automate end-to-end recruitment
- Reduce hiring bias
- Improve hiring efficiency
- Enable scalable AI hiring
- Provide real-time candidate evaluation

---

# 🏗️ System Architecture

```text
Frontend
   │
   ▼
Backend API
   │
   ▼
AI Services
   ├── ATS AI
   ├── Screening AI
   ├── Interview AI
   ├── Behavior Analysis AI
   └── Decision Engine
   │
   ▼
Database & Storage
   │
   ▼
Queue System
```

---

# 📂 Project Structure

```bash
zecpath-ai-system/
│
├── data/                 # Sample datasets & resumes
├── parsers/              # Resume parsing logic
├── ats_engine/           # ATS scoring engine
├── screening_ai/         # Voice screening module
├── interview_ai/         # Interview evaluation system
├── scoring/              # Final scoring engine
├── utils/                # Helper functions & logging
├── tests/                # Unit tests
│
├── logs/                 # Auto-generated logs
├── models/               # Trained AI models
│
├── main.py               # FastAPI entry point
├── config.py             # Application configuration
├── requirements.txt      # Dependencies
├── README.md             # Documentation
└── .gitignore
```

---

# 🤖 AI Modules

---

## 1️⃣ ATS Engine

### ✔ Features
- Resume parsing using NLP
- Skill extraction
- Experience analysis
- Education analysis
- Candidate ranking

### 📥 Input
- Resume
- Job Description

### 📤 Output
- ATS Match Score
- Parsed Candidate Data

---

## 2️⃣ Screening AI

### ✔ Features
- Automated voice interviews
- Speech-to-text conversion
- AI response evaluation

### 📥 Input
- Candidate audio
- Screening questions

### 📤 Output
- Interview transcript
- Screening score

---

## 3️⃣ Interview AI

### ✔ Features
- HR interview analysis
- Technical interview evaluation
- Communication assessment

### 📥 Input
- Candidate profile

### 📤 Output
- Interview report
- Technical score

---

## 4️⃣ Behavior Analysis AI

### ✔ Features
- Sentiment analysis
- Tone detection
- Confidence evaluation

### 📥 Input
- Audio
- Transcript

### 📤 Output
- Behavior score

---

## 5️⃣ Decision & Scoring Engine

### ✔ Features
- Combines all AI scores
- Generates final decision
- Creates recruiter reports

### 📥 Input
- ATS Score
- Screening Score
- Interview Score
- Behavior Score

### 📤 Output
- ✅ Select
- ❌ Reject
- ⏳ Hold

---

# 🔄 Data Flow

```text
Resume Upload
      │
      ▼
ATS AI Processing
      │
      ▼
ATS Score Stored in Database
      │
      ▼
Candidate Shortlisting
      │
      ▼
Screening AI
      │
      ▼
Interview AI
      │
      ▼
Behavior Analysis
      │
      ▼
Decision & Scoring Engine
      │
      ▼
Final Hiring Decision
      │
      ▼
Frontend Dashboard
```

---

# 🔐 Security & Compliance

- Secure resume & audio handling
- Consent-based processing
- Role-based access control
- GDPR-style architecture
- Future encryption support

---

# ⚙️ Tech Stack

## 🚀 Backend
- FastAPI
- Uvicorn

## 🤖 AI / ML
- Transformers
- Scikit-learn
- NumPy
- Pandas

## 🎙️ Audio Processing
- SpeechRecognition

## 🛠️ Utilities
- Loguru
- PyTest

---

# ▶️ Installation & Setup

## 1️⃣ Clone Repository

```bash
git clone https://github.com/your-username/zecpath-ai-system.git

cd zecpath-ai-system
```

---

## 2️⃣ Create Virtual Environment

### Windows

```bash
python -m venv venv

venv\Scripts\activate
```

### Linux / Mac

```bash
python3 -m venv venv

source venv/bin/activate
```

---

## 3️⃣ Install Dependencies

```bash
pip install -r requirements.txt
```

---

## 4️⃣ Run Application

```bash
python main.py
```

---

# 🧪 Testing

```bash
pytest tests/
```

---

# 📈 Future Enhancements

- Docker deployment
- Kubernetes orchestration
- AI bias detection
- Recruiter analytics dashboard
- Cloud deployment
- Multi-language interviews
- Real-time monitoring

---

# 🧾 Conclusion

**Zecpath AI System** is a complete AI-powered recruitment solution that automates hiring workflows using multiple intelligent AI modules.

### ✔ Advantages

- Scalable architecture
- Faster recruitment
- Reduced manual effort
- Intelligent candidate evaluation
- Real-world AI implementation

---

# 👨‍💻 Author

## Rohith K  
AI Developer

---

# 🙏 Acknowledgment

This project was developed as part of an internship at Zecser Business LLP and as an AI system design exercise focused on intelligent recruitment automation.

---

# ⭐ Support

```text
⭐ Star the repository
🍴 Fork the project
🛠️ Contribute to improve the system
```
