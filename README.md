# RAG System in Go
   
   Learning-focused Retrieval-Augmented Generation system built with Go and gRPC.
   
   ## Team
   - **Engineer A:** Vector Store, Performance
   - **Engineer B:** Infrastructure, LLM
   - **Engineer C:** Ingest, Embed
   - **Engineer D:** Testing, Documentation
   
   ## Architecture
   
   6 microservices communicating via gRPC:
   - **Gateway** - External REST API
   - **Ingest** - Document ingestion (text-only)
   - **Embed** - Text embedding via Gemini API
   - **Query** - Search and retrieval
   - **LLM** - Answer generation via Gemini API
   - **VectorStore** - Vector database operations (pgvector)
   
   ## Documentation
   
   ### Setup & Environment
   - [Setup Verification](SETUP_VERIFICATION.md) - Environment setup status
   
   ### RAG-6: Proto Schema Design
   - **[📖 Start Here: Documentation Overview](docs/RAG-6-README.md)** ⭐ How to use all documents
   - [📋 Meeting Guide](docs/RAG-6-MEETING-GUIDE.md) - Complete preparation (25 pages)
   - [📄 Quick Reference](docs/RAG-6-QUICK-REFERENCE.md) - One-page summary
   - [📝 Meeting Notes Template](docs/RAG-6-MEETING-NOTES.md) - Fill during meeting
   - [✅ Meeting Checklist](docs/RAG-6-MEETING-CHECKLIST.md) - Keep visible during meeting
   - [📚 Design Decisions](docs/RAG-6-DESIGN-DECISIONS.md) - Complete technical details (15 pages)
   
   ## Quick Start
   
   Coming soon after proto definitions are finalized...
