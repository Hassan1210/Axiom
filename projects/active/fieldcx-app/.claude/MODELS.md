# FieldCX — Models & Entities Rules

## No Code Generation
> No freezed. No json_serializable. No build_runner.
> Everything is written manually.

## Two Layers — Never Mix

| Layer    | Folder               | Purpose                        |
|----------|----------------------|--------------------------------|
| Entity   | `domain/entities/`   | Business object. No JSON.      |
| Model    | `data/models/`       | API DTO. Has fromJson/toJson.  |

## Entity Pattern
```dart
// lib/domain/entities/job_entity.dart
class JobEntity extends Equatable {
  final String id;
  final String title;
  final JobStatus status;
  final DateTime scheduledAt;
  final String agentId;

  const JobEntity({
    required this.id,
    required this.title,
    required this.status,
    required this.scheduledAt,
    required this.agentId,
  });

  @override
  List<Object?> get props => [id, title, status, scheduledAt, agentId];
}

enum JobStatus { pending, inProgress, completed, cancelled }
```

## Model Pattern (manual)
```dart
// lib/data/models/job_model.dart
class JobModel {
  final String id;
  final String title;
  final String status;
  final String scheduledAt;
  final String agentId;

  const JobModel({
    required this.id,
    required this.title,
    required this.status,
    required this.scheduledAt,
    required this.agentId,
  });

  factory JobModel.fromJson(Map<String, dynamic> json) => JobModel(
    id:          json['id'] as String,
    title:       json['title'] as String,
    status:      json['status'] as String,
    scheduledAt: json['scheduled_at'] as String,
    agentId:     json['agent_id'] as String,
  );

  Map<String, dynamic> toJson() => {
    'id': id, 'title': title, 'status': status,
    'scheduled_at': scheduledAt, 'agent_id': agentId,
  };

  JobEntity toEntity() => JobEntity(
    id:          id,
    title:       title,
    status:      JobStatus.values.byName(status),
    scheduledAt: DateTime.parse(scheduledAt),
    agentId:     agentId,
  );
}
```

## Rules
- Entities extend `Equatable` — always override `props`
- Entities have NO `fromJson`, NO `toJson`
- Models are ONLY used in `data/` layer — never passed to ViewModels
- ViewModels and Views receive Entities only
- `toEntity()` mapper lives on the Model class
- One model file = one API resource
