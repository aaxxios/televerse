part of passport;

/// Represents an issue with the translated version of a document. The error is considered resolved when a file with the document translation change.
class PassportElementErrorTranslationFiles extends PassportElementError {
  /// Error message
  final String message;

  /// List of base64-encoded file hashes
  final List<String> fileHashes;

  /// Constructs a [PassportElementErrorTranslationFiles] object
  const PassportElementErrorTranslationFiles({
    required String source,
    required PassportType type,
    required this.message,
    required this.fileHashes,
  }) : super(
          source: source,
          type: type,
        );

  /// Converts a [PassportElementErrorTranslationFiles] object to JSON object
  @override
  Map<String, dynamic> toJson() {
    return {
      'source': source,
      'type': type,
      'message': message,
      'file_hashes': fileHashes,
    }..removeWhere((key, value) => value == null);
  }

  /// Creates a [PassportElementErrorTranslationFiles] object from JSON object
  factory PassportElementErrorTranslationFiles.fromJson(
    Map<String, dynamic> json,
  ) {
    return PassportElementErrorTranslationFiles(
      source: json['source']!,
      type: PassportType.fromJson(json['type']!),
      message: json['message']!,
      fileHashes: List<String>.from(json['file_hashes']! as List<dynamic>),
    );
  }
}
