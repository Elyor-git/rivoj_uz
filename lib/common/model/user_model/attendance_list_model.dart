class AttendanceList {
  const AttendanceList({
    required this.moduleNumber,
    required this.lessonNumber,
    required this.score,
  });

  final int moduleNumber;
  final int lessonNumber;
  final int score;

  factory AttendanceList.fromJson(Map<String, Object?> json) => AttendanceList(
        moduleNumber: json['moduleNumber'] as int? ?? 0,
        lessonNumber: json['lessonNumber'] as int? ?? 0,
        score: json['score'] as int? ?? 0,
      );

  Map<String, Object?> toJson() => <String, Object?>{
        'moduleNumber': moduleNumber,
        'lessonNumber': lessonNumber,
        'score': score,
      };

  AttendanceList copyWith({
    int? moduleNumber,
    int? lessonNumber,
    int? score,
  }) =>
      AttendanceList(
        moduleNumber: moduleNumber ?? this.moduleNumber,
        lessonNumber: lessonNumber ?? this.lessonNumber,
        score: score ?? this.score,
      );

  @override
  bool operator ==(covariant AttendanceList other) {
    if (identical(this, other)) return true;

    return other.moduleNumber == moduleNumber &&
        other.lessonNumber == lessonNumber &&
        other.score == score;
  }

  @override
  int get hashCode =>
      moduleNumber.hashCode ^ lessonNumber.hashCode ^ score.hashCode;

  @override
  String toString() => 'AttendanceList('
      'moduleNumber: $moduleNumber,'
      'lessonNumber: $lessonNumber,'
      'score: $score)';
}
