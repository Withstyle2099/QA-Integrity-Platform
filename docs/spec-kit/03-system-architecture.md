# System Architecture

## 1. Logical Architecture

```text
Enterprise Portal
├── Dashboard
├── Laboratory Operations
├── Sample Coordination
├── Instrument Management
├── Equipment Qualification
├── Calibration
├── Preventive Maintenance
├── Corrective Maintenance
├── Chemical Management
├── CRM Management
├── Method Management
├── Validation Management
├── eQMS
├── CAPA
├── Nonconformance
├── Audit
├── Health Assessment
├── Risk Register
├── Project Management
├── Competency
├── Training
├── Document Control
├── KPI Center
├── AI Copilot
└── Administration
```

## 2. Recommended Technology Stack

| Layer | Technology |
| --- | --- |
| Frontend | React, Next.js, TypeScript, Tailwind CSS |
| Backend API | ASP.NET Core Web API |
| AI and Analytics | Python services for retrieval, summarization, analytics, and model orchestration |
| Database | Microsoft SQL Server or PostgreSQL |
| Reporting | Power BI Embedded, optional Grafana operational panels |
| Authentication | Microsoft Entra ID |
| Object Storage | Azure Blob Storage |
| Deployment | Azure Kubernetes Service or on-premises Kubernetes |
| CI/CD | GitHub Actions or Azure DevOps |

## 3. Integration Architecture

LOMP shall integrate with existing enterprise systems through APIs, event queues, and file-based interfaces when needed.

| External System | Integration Purpose |
| --- | --- |
| LabWare LIMS | Sample status, sample metadata, test assignment, result availability indicators, and operational turnaround metrics. |
| SAP or ERP | Purchase requests, cost centers, vendor records, service contracts, and asset finance metadata. |
| Microsoft Entra ID | SSO, MFA, group membership, and access lifecycle management. |
| SharePoint | Controlled document publication and enterprise knowledge synchronization when required. |
| Microsoft Teams | Approval notifications, escalation alerts, and operational reminders. |
| Power BI | Executive dashboards and enterprise reporting datasets. |
| Azure Blob Storage | Attachments, certificates, photos, voice notes, validation reports, and evidence packages. |

## 4. Service Boundaries

- Identity and access service
- Organization and master data service
- Workflow and notification service
- Laboratory operations service
- Sample coordination service
- Equipment lifecycle service
- Method and validation service
- eQMS service
- Document control service
- Audit and health assessment service
- KPI and reporting service
- AI Copilot service

## 5. Security Architecture

- Enforce Microsoft Entra ID authentication for enterprise users.
- Apply RBAC and optional attribute-based controls for site, department, laboratory, record type, and workflow role.
- Require electronic signatures for regulated approvals and closure steps.
- Maintain immutable audit events for workflow transitions, data changes, document revisions, delegation, and electronic signatures.
- Apply least privilege access to APIs, object storage, databases, and reporting datasets.

## 6. Deployment Topology

A production deployment should use containerized services behind an ingress gateway. Stateless application services should run in Kubernetes, with managed database, managed storage, centralized logging, and monitored background workers for notifications, reporting refresh, integration jobs, and AI indexing.
