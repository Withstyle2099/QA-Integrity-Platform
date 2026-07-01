# Data Model and ERD Specification

## 1. Database Domains

The normalized schema should contain approximately 85 to 100 tables grouped into these domains:

1. Identity and security
2. Organization and departments
3. Personnel and competency
4. Laboratory operations
5. Sample coordination
6. Equipment and assets
7. IQ/OQ/PQ and qualification
8. Calibration and maintenance
9. Chemical and CRM inventory
10. Methods and validation
11. eQMS
12. Document management
13. Audits and health assessments
14. Projects and continuous improvement
15. Notifications and workflow
16. Reporting and analytics
17. AI knowledge base

## 2. Core Entity Groups

### Identity and Security

- UserAccount
- Role
- Permission
- UserRole
- AccessScope
- ElectronicSignature
- AuditEvent
- DelegationAssignment

### Organization and Laboratory Structure

- BusinessLine
- Department
- Division
- LaboratorySite
- LaboratoryArea
- CostCenter
- Supplier
- CustomerDepartment

### Personnel and Competency

- Person
- Position
- CompetencyRequirement
- CompetencyRecord
- TrainingCourse
- TrainingAssignment
- AuthorizationRecord
- Certification

### Laboratory Operations

- OperationBoard
- Shift
- ShiftHandover
- DailyLogbookEntry
- WorkAssignment
- ResourcePlan
- EmergencyWork
- OperationsCalendarEvent

### Sample Coordination

- SampleRequest
- SampleMovement
- ChainOfCustodyEvent
- LaboratoryAssignment
- TurnaroundTarget
- CustomerCommunication
- DelayReason

### Equipment and Qualification

- EquipmentAsset
- EquipmentTimelineEvent
- QualificationPlan
- DQRecord
- IQRecord
- OQRecord
- PQRecord
- QualificationChecklistItem
- QualificationApproval

### Calibration and Maintenance

- CalibrationSchedule
- CalibrationEvent
- CalibrationCertificate
- OutOfToleranceEvent
- PreventiveMaintenancePlan
- PreventiveMaintenanceEvent
- CorrectiveMaintenanceEvent
- SparePart
- ServiceContract

### Methods and Validation

- Method
- MethodLifecycleEvent
- MethodReview
- ValidationPlan
- ValidationParameter
- ValidationResult
- ControlChart
- StatisticalReport
- SOPReference

### eQMS

- CAPA
- RootCauseAnalysis
- ActionItem
- EffectivenessReview
- Nonconformance
- Deviation
- ChangeControl
- RiskRecord
- Complaint
- Opportunity

### Document, Audit, and Assessment

- ControlledDocument
- DocumentRevision
- DocumentReview
- DocumentDistribution
- AuditProgram
- Audit
- AuditFinding
- HealthAssessment
- AssessmentCategory
- AssessmentFinding
- AssessmentEvidence

## 3. Key Relationships

```text
LaboratorySite 1---* LaboratoryArea
LaboratorySite 1---* EquipmentAsset
EquipmentAsset 1---* QualificationPlan
QualificationPlan 1---* DQRecord/IQRecord/OQRecord/PQRecord
EquipmentAsset 1---* CalibrationEvent
EquipmentAsset 1---* PreventiveMaintenanceEvent
EquipmentAsset 1---* CorrectiveMaintenanceEvent

Method 1---* MethodLifecycleEvent
Method 1---* ValidationPlan
ValidationPlan 1---* ValidationParameter
ValidationParameter 1---* ValidationResult
Method 1---* SOPReference

SampleRequest 1---* SampleMovement
SampleRequest 1---* ChainOfCustodyEvent
SampleRequest *---1 LaboratoryAssignment

CAPA 1---* ActionItem
CAPA 1---* EffectivenessReview
Nonconformance 0..1---1 CAPA
Deviation 0..1---1 ChangeControl
RiskRecord 0..*---0..* CAPA

ControlledDocument 1---* DocumentRevision
DocumentRevision 1---* WorkflowInstance
WorkflowInstance 1---* WorkflowTask
WorkflowTask 1---* ElectronicSignature
```

## 4. Audit and Traceability Rules

- Every table containing regulated or operationally critical records shall include created, updated, status, owner, and site metadata.
- Workflow-controlled records shall reference a workflow instance.
- Attachments shall be stored as metadata rows that point to controlled object storage locations.
- Deletions should be soft-deleted unless retention policy explicitly allows purge.
- Audit events shall capture actor, timestamp, action, previous value, new value, source application, and correlation ID.
