# Workflow and RBAC Specification

## 1. Saudi Aramco-Style Approval Workflow Engine

The workflow engine is a core platform capability. It shall support configurable approval chains, conditional routing, escalation, delegation, acting assignments, audit trails, and electronic signatures.

## 2. Standard Approval Chain

```text
Scientist
↓
Lead Scientist
↓
Supervisor
↓
Lab Superintendent
↓
Department Manager
↓
Division Head
↓
Closed
```

## 3. Workflow Capabilities

- Sequential approvals
- Parallel approvals
- Conditional approvals based on risk, cost, method criticality, severity, or site
- Delegation and acting assignment
- Electronic signatures
- Digital timestamps
- Immutable audit trails
- Escalation rules
- Reminder notifications
- SLA monitoring
- Reopen and resubmission controls
- Workflow template versioning

## 4. Workflow Applicability

The workflow engine shall apply to:

- SOP approval
- Method validation
- Method development
- Instrument qualification
- CAPA closure
- Purchase requests
- Laboratory initiatives
- Technical reports
- Customer reports
- Health assessments
- Risk assessments
- Improvement projects

## 5. RBAC Matrix

| Capability | Scientist | Lead Scientist | Supervisor | Superintendent | QA Manager | Department Manager | Admin |
| --- | --- | --- | --- | --- | --- | --- | --- |
| View assigned operations | Yes | Yes | Yes | Yes | Yes | Yes | Configurable |
| Create sample coordination records | Yes | Yes | Yes | Yes | No | View | Configurable |
| Approve technical work | No | Yes | Yes | Yes | Conditional | Conditional | No |
| Approve quality closure | No | No | Conditional | Conditional | Yes | Conditional | No |
| Manage equipment records | Limited | Yes | Yes | Yes | View | View | Configurable |
| Manage qualification records | Contributor | Reviewer | Approver | Approver | QA approval | Conditional | Configurable |
| Create CAPA/NC/deviation | Yes | Yes | Yes | Yes | Yes | Yes | Configurable |
| Close CAPA | No | Conditional | Conditional | Yes | Yes | Conditional | No |
| Manage controlled documents | Draft | Review | Review | Approve | QA approval | Approve | Configurable |
| Configure workflows | No | No | No | No | Limited | Limited | Yes |
| Manage users and roles | No | No | No | No | No | No | Yes |

## 6. Electronic Signature Requirements

Electronic signatures shall capture signer identity, meaning of signature, timestamp, authentication confirmation, record version, workflow task, and reason/comment when required. Signature meaning examples include authored by, reviewed by, approved by, rejected by, verified by, closed by, and effectiveness accepted by.
