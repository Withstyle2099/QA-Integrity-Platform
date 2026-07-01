# Enterprise Oil & Gas Laboratory Operations Management Platform (LOMP)

This repository contains the specification kit for an Enterprise Laboratory Operations Management Platform (LOMP) designed for oil and gas laboratory organizations. The platform is intended to complement existing LIMS products such as LabWare by managing operational governance, quality workflows, equipment lifecycle processes, approvals, dashboards, and AI-assisted decision support rather than replacing analytical data acquisition.

## SpecKit Contents

The current SpecKit is organized under [`docs/spec-kit`](docs/spec-kit/):

| Document | Purpose |
| --- | --- |
| [Product Requirements Document](docs/spec-kit/01-product-requirements.md) | Product vision, scope, personas, module requirements, and success metrics. |
| [Software Requirements Specification](docs/spec-kit/02-software-requirements.md) | Functional and non-functional requirements for the platform. |
| [Architecture](docs/spec-kit/03-system-architecture.md) | Logical architecture, integration approach, security model, and deployment topology. |
| [Data Model](docs/spec-kit/04-data-model.md) | Normalized database domains, core entities, and ERD-style relationships. |
| [Workflow & RBAC](docs/spec-kit/05-workflow-rbac.md) | Saudi Aramco-style approval engine, workflow patterns, and role-based access matrix. |
| [AI, Reporting & Dashboards](docs/spec-kit/06-ai-reporting-dashboards.md) | AI Copilot, KPI center, Power BI dashboard, and reporting specifications. |
| [Implementation Roadmap](docs/spec-kit/07-implementation-roadmap.md) | Phased delivery plan, test strategy, DevOps approach, and operational rollout. |

## Core Platform Areas

- Laboratory operations and shift management
- Sample coordination without replacing LIMS
- Configurable enterprise approval workflows
- Laboratory health assessments for offshore and process labs
- Equipment lifecycle, qualification, calibration, and maintenance
- Method lifecycle management and validation
- Integrated eQMS covering CAPA, nonconformance, deviations, change control, complaints, and risk
- Competency, training, and document control
- KPI center, executive dashboards, and enterprise reporting
- AI Copilot for operational insight, drafting assistance, and decision support

## Technology Direction

- **Frontend:** React, Next.js, TypeScript, Tailwind CSS
- **Backend:** ASP.NET Core Web API plus Python AI/analytics services
- **Database:** Microsoft SQL Server or PostgreSQL
- **Authentication:** Microsoft Entra ID with MFA and role-based access
- **Storage:** Azure Blob Storage for controlled documents and evidence
- **Deployment:** Azure Kubernetes Service or on-premises Kubernetes with CI/CD

## Legacy Example

The original VBA demonstration remains available in [`vba`](vba/) for reference, but the primary direction of this repository is now the enterprise LOMP SpecKit.
