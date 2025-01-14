part of models;

/// This object contains information about one answer option in a poll.
class PollOption {
  /// Option text, 1-100 characters
  String text;

  /// Number of users that voted for this option
  int voterCount;

  /// Constructs a [PollOption] object
  PollOption({
    required this.text,
    required this.voterCount,
  });

  /// Creates a [PollOption] object from JSON object
  factory PollOption.fromJson(Map<String, dynamic> json) {
    return PollOption(
      text: json['text']!,
      voterCount: json['voter_count']!,
    );
  }

  /// Converts a [PollOption] object to a JSON object
  Map<String, dynamic> toJson() {
    return {
      'text': text,
      'voter_count': voterCount,
    }..removeWhere((key, value) => value == null);
  }
}
