part of models;

/// Represents a link to a page containing an embedded video player or a video file. By default, this video file will be sent by the user with an optional caption. Alternatively, you can use input_message_content to send a message with the specified content instead of the video.
///
/// If an InlineQueryResultVideo message contains an embedded video (e.g., YouTube), you must replace its content using input_message_content.
class InlineQueryResultVideo extends InlineQueryResult {
  /// Type of the result, always [InlineQueryResultType.video]
  @override
  InlineQueryResultType get type => InlineQueryResultType.video;

  /// A valid URL for the embedded video player or video file
  String videoUrl;

  /// MIME type of the content of the video URL, “text/html” or “video/mp4”
  String mimeType;

  /// URL of the thumbnail (JPEG only) for the video
  String thumbnailUrl;

  /// Title for the result
  String title;

  /// Optional. Caption of the video to be sent, 0-1024 characters after entities parsing
  String? caption;

  /// Optional. Mode for parsing entities in the video caption. See formatting options for more details.
  ParseMode? parseMode;

  /// Optional. List of special entities that appear in the caption, which can be specified instead of parse_mode
  List<MessageEntity>? captionEntities;

  /// Optional. Video width
  int? videoWidth;

  /// Optional. Video height
  int? videoHeight;

  /// Optional. Video duration in seconds
  int? videoDuration;

  /// Optional. Short description of the result
  String? description;

  /// Optional. Inline keyboard attached to the message
  InlineKeyboardMarkup? replyMarkup;

  /// Optional. Content of the message to be sent instead of the video. This field is required if InlineQueryResultVideo is used to send an HTML-page as a result (e.g., a YouTube video).
  InputMessageContent? inputMessageContent;

  /// Converts [InlineQueryResultVideo] object to a JSON object
  @override
  Map<String, dynamic> toJson() {
    return {
      'type': type.value,
      'video_url': videoUrl,
      'mime_type': mimeType,
      'thumbnail_url': thumbnailUrl,
      'title': title,
      'caption': caption,
      'parse_mode': parseMode?.value,
      'caption_entities': captionEntities?.map((e) => e.toJson()).toList(),
      'video_width': videoWidth,
      'video_height': videoHeight,
      'video_duration': videoDuration,
      'description': description,
      'reply_markup': replyMarkup?.toJson(),
      'input_message_content': inputMessageContent?.toJson(),
    }..removeWhere((_, v) => v == null);
  }

  /// Constructs an [InlineQueryResultVideo] object
  InlineQueryResultVideo({
    required this.videoUrl,
    required this.mimeType,
    required this.thumbnailUrl,
    required this.title,
    required String id,
    this.caption,
    this.parseMode,
    this.captionEntities,
    this.videoWidth,
    this.videoHeight,
    this.videoDuration,
    this.description,
    this.replyMarkup,
    this.inputMessageContent,
  }) : super(id: id);

  /// Constructs an [InlineQueryResultVideo] from JSON object
  factory InlineQueryResultVideo.fromJson(Map<String, dynamic> json) {
    return InlineQueryResultVideo(
      videoUrl: json['video_url']!,
      mimeType: json['mime_type']!,
      thumbnailUrl: json['thumbnail_url']!,
      title: json['title']!,
      id: json['id']!,
      caption: json['caption'],
      parseMode: ParseMode.fromJson(json['parse_mode']),
      captionEntities: (json['caption_entities'] as List<dynamic>?)
          ?.map((e) => MessageEntity.fromJson(e))
          .toList(),
      videoWidth: json['video_width'],
      videoHeight: json['video_height'],
      videoDuration: json['video_duration'],
      description: json['description'],
      replyMarkup: InlineKeyboardMarkup.fromJson(json['reply_markup']),
      inputMessageContent:
          InputMessageContent.fromJson(json['input_message_content']),
    );
  }
}
