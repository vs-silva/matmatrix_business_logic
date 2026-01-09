# 🥋 MatMatrix: The Core Domain
## The central orchestration engine of the MatMatrix ecosystem.

### 🎯 Overview
This repository houses the pure business rules, entities, and use cases that power the MatMatrix Brazilian Jiu-Jitsu management system. By using Hexagonal Architecture (Ports & Adapters), we ensure that the "intellectual property" of the application. The logic and use case's lifecycles are completely isolated from external dependencies like UI frameworks or specific databases.

### 📚 Key Features
- **Hexagonal Architecture**: Isolates domain logic from UI and persistence layers.
- **Testability**: Facilitates TDD by keeping business rules pure and testable.
- **Resilience**: Ensures the core remains robust against infrastructure changes.