class Option {
  final String optionId;
  final String option;
  Option({
    required this.optionId,
    required this.option,
  });

  Option copyWith({
    String? optionId,
    String? option,
  }) {
    return Option(
      optionId: optionId ?? this.optionId,
      option: option ?? this.option,
    );
  }
}
