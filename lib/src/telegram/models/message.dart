part of models;

/// This object represents a message.
class Message {
  /// Unique message identifier inside this chat
  final int messageId;

  /// Optional. Unique identifier of a message thread to which the message belongs; for supergroups only
  final int? messageThreadId;

  /// Optional. Sender of the message; empty for messages sent to channels. For backward compatibility, the field contains a fake sender user in non-channel chats, if the message was sent on behalf of a chat.
  final User? from;

  /// Optional. Sender of the message, sent on behalf of a chat. For example, the channel itself for channel posts, the supergroup itself for messages from anonymous group administrators, the linked channel for messages automatically forwarded to the discussion group. For backward compatibility, the field from contains a fake sender user in non-channel chats, if the message was sent on behalf of a chat.
  final Chat? senderChat;

  /// Date the message was sent in Unix time
  ///
  /// Note: Handy [DateTime] object is available in [dateTime] getter.
  final int date;

  /// Conversation the message belongs to
  final Chat chat;

  /// Optional. For forwarded messages, sender of the original message
  final User? forwardFrom;

  /// Optional. For messages forwarded from channels or from anonymous administrators, information about the original sender chat
  final Chat? forwardFromChat;

  /// Optional. For messages forwarded from channels, identifier of the original message in the channel
  final int? forwardFromMessageId;

  /// Optional. For forwarded messages that were originally sent in channels or by an anonymous chat administrator, signature of the message sender if present
  final String? forwardSignature;

  /// Optional. Sender's name for messages forwarded from users who disallow adding a link to their account in forwarded messages
  final String? forwardSenderName;

  /// Optional. For forwarded messages, date the original message was sent in Unix time
  ///
  /// Note: Handy [DateTime] object is available in [forwardDateTime] getter.
  final int? forwardDate;

  /// Optional. True, if the message is sent to a forum topic
  final bool? isTopicMessage;

  /// Optional. True, if the message is a channel post that was automatically forwarded to the connected discussion group
  final bool? isAutomaticForward;

  /// Optional. For replies, the original message. Note that the Message object in this field will not contain further reply_to_message fields even if it itself is a reply.
  final Message? replyToMessage;

  /// Optional. Bot through which the message was sent
  final User? viaBot;

  /// Optional. Date the message was last edited in Unix time
  ///
  /// Note: Handy [DateTime] object is available in [editDateTime] getter.
  final int? editDate;

  /// Optional. True, if the message can't be forwarded
  final bool? hasProtectedContent;

  /// Optional. The unique identifier of a media message group this message belongs to
  final String? mediaGroupId;

  /// Optional. Signature of the post author for messages in channels, or the custom title of an anonymous group administrator
  final String? authorSignature;

  /// Optional. For text messages, the actual UTF-8 text of the message
  final String? text;

  /// Optional. For text messages, special entities like usernames, URLs, bot commands, etc. that appear in the text
  final List<MessageEntity>? entities;

  /// Optional. Message is an animation, information about the animation. For backward compatibility, when this field is set, the document field will also be set
  final Animation? animation;

  /// Optional. Message is an audio file, information about the file
  final Audio? audio;

  /// Optional. Message is a general file, information about the file
  final Document? document;

  /// Optional. Message is a photo, available sizes of the photo
  final List<PhotoSize>? photo;

  /// Optional. Message is a sticker, information about the sticker
  final Sticker? sticker;

  /// Optional. Message is a video, information about the video
  final Video? video;

  /// Optional. Message is a video note, information about the video message
  final VideoNote? videoNote;

  /// Optional. Message is a voice message, information about the file
  final Voice? voice;

  /// Optional. Caption for the animation, audio, document, photo, video or voice
  final String? caption;

  /// Optional. For messages with a caption, special entities like usernames, URLs, bot commands, etc. that appear in the caption
  final List<MessageEntity>? captionEntities;

  /// Optional. Message is a shared contact, information about the contact
  final Contact? contact;

  /// Optional. Message is a dice with random value
  final Dice? dice;

  /// Optional. Message is a game, information about the game. More about games »
  final Game? game;

  /// Optional. Message is a native poll, information about the poll
  final Poll? poll;

  /// Optional. Message is a venue, information about the venue. For backward compatibility, when this field is set, the location field will also be set
  final Venue? venue;

  /// Optional. Message is a shared location, information about the location
  final Location? location;

  /// Optional. New members that were added to the group or supergroup and information about them (the bot itself may be one of these members)
  final List<User>? newChatMembers;

  /// Optional. A member was removed from the group, information about them (this member may be the bot itself)
  final User? leftChatMember;

  /// Optional. A chat title was changed to this value
  final String? newChatTitle;

  /// Optional. A chat photo was change to this value
  final List<PhotoSize>? newChatPhoto;

  /// Optional. Service message: the chat photo was deleted
  final bool? deleteChatPhoto;

  /// Optional. Service message: the group has been created
  final bool? groupChatCreated;

  /// Optional. Service message: the supergroup has been created. This field can't be received in a message coming through updates, because bot can't be a member of a supergroup when it is created. It can only be found in reply_to_message if someone replies to a very first message in a directly created supergroup.
  final bool? supergroupChatCreated;

  /// Optional. Service message: the channel has been created. This field can't be received in a message coming through updates, because bot can't be a member of a channel when it is created. It can only be found in reply_to_message if someone replies to a very first message in a channel.
  final bool? channelChatCreated;

  /// Optional. Service message: auto-delete timer settings changed in the chat
  final MessageAutoDeleteTimerChanged? messageAutoDeleteTimerChanged;

  /// Optional. The group has been migrated to a supergroup with the specified identifier. This number may have more than 32 significant bits and some programming languages may have difficulty/silent defects in interpreting it. But it has at most 52 significant bits, so a signed 64-bit integer or double-precision float type are safe for storing this identifier.
  final int? migrateToChatId;

  /// Optional. The supergroup has been migrated from a group with the specified identifier. This number may have more than 32 significant bits and some programming languages may have difficulty/silent defects in interpreting it. But it has at most 52 significant bits, so a signed 64-bit integer or double-precision float type are safe for storing this identifier.
  final int? migrateFromChatId;

  /// Optional. Specified message was pinned. Note that the Message object in this field will not contain further reply_to_message fields even if it is itself a reply.
  final Message? pinnedMessage;

  /// Optional. Message is an invoice for a payment, information about the invoice. [More about payments »](https://core.telegram.org/bots/api#payments)
  final Invoice? invoice;

  /// Optional. Message is a service message about a successful payment, information about the payment. [More about payments »](https://core.telegram.org/bots/api#payments)
  final SuccessfulPayment? successfulPayment;

  /// Optional. The domain name of the website on which the user has logged in. [More about Telegram Login »](https://core.telegram.org/widgets/login)
  final String? connectedWebsite;

  /// Optional. Telegram Passport data
  final PassportData? passportData;

  /// Optional. Service message. A user in the chat triggered another user's proximity alert while sharing Live Location.
  final ProximityAlertTriggered? proximityAlertTriggered;

  /// Optional. Service message: forum topic created
  final ForumTopicCreated? forumTopicCreated;

  /// Optional. Service message: forum topic closed
  final ForumTopicClosed? forumTopicClosed;

  /// Optional. Service message: forum topic reopened
  final ForumTopicReopened? forumTopicReopened;

  /// Optional. Service message: video chat scheduled
  final VideoChatScheduled? videoChatScheduled;

  /// Optional. Service message: video chat started
  final VideoChatStarted? videoChatStarted;

  /// Optional. Service message: video chat ended
  final VideoChatEnded? videoChatEnded;

  /// Optional. Service message: new participants invited to a video chat
  final VideoChatParticipantsInvited? videoChatParticipantsInvited;

  /// Optional. Service message: data sent by a Web App
  final WebAppData? webAppData;

  /// Optional. Inline keyboard attached to the message. login_url buttons are represented as ordinary url buttons.
  final InlineKeyboardMarkup? replyMarkup;

  /// Optional. Service message: a user was shared with the bot
  final UserShared? userShared;

  /// Optional. Service message: a chat was shared with the bot
  final ChatShared? chatShared;

  /// Optional. True, if the message media is covered by a spoiler animation
  final bool? hasMediaSpoiler;

  /// Optional. Service message: forum topic edited
  final ForumTopicEdited? forumTopicEdited;

  /// Optional. Service message: the 'General' forum topic hidden
  final GeneralForumTopicHidden? generalForumTopicHidden;

  /// Optional. Service message: the 'General' forum topic unhidden
  final GeneralForumTopicUnhidden? generalForumTopicUnhidden;

  /// Optional. Service message: the user allowed the bot added to the attachment menu to write messages
  final WriteAccessAllowed? writeAccessAllowed;

  /// Creates a Message object.
  const Message({
    required this.messageId,
    this.from,
    this.senderChat,
    required this.date,
    required this.chat,
    this.forwardFrom,
    this.forwardFromChat,
    this.forwardFromMessageId,
    this.forwardSignature,
    this.forwardSenderName,
    this.forwardDate,
    this.replyToMessage,
    this.viaBot,
    this.editDate,
    this.mediaGroupId,
    this.authorSignature,
    this.text,
    this.entities,
    this.animation,
    this.audio,
    this.document,
    this.photo,
    this.sticker,
    this.video,
    this.videoNote,
    this.voice,
    this.caption,
    this.captionEntities,
    this.contact,
    this.dice,
    this.game,
    this.poll,
    this.venue,
    this.location,
    this.newChatMembers,
    this.leftChatMember,
    this.newChatTitle,
    this.newChatPhoto,
    this.deleteChatPhoto,
    this.groupChatCreated,
    this.supergroupChatCreated,
    this.channelChatCreated,
    this.messageAutoDeleteTimerChanged,
    this.migrateToChatId,
    this.migrateFromChatId,
    this.pinnedMessage,
    this.invoice,
    this.successfulPayment,
    this.connectedWebsite,
    this.passportData,
    this.proximityAlertTriggered,
    this.forumTopicCreated,
    this.forumTopicClosed,
    this.forumTopicReopened,
    this.videoChatScheduled,
    this.videoChatStarted,
    this.videoChatEnded,
    this.videoChatParticipantsInvited,
    this.webAppData,
    this.replyMarkup,
    this.hasProtectedContent,
    this.isAutomaticForward,
    this.isTopicMessage,
    this.messageThreadId,
    this.userShared,
    this.chatShared,
    this.hasMediaSpoiler,
    this.forumTopicEdited,
    this.generalForumTopicHidden,
    this.generalForumTopicUnhidden,
    this.writeAccessAllowed,
  });

  /// Creates a [Message] object from json map.
  factory Message.fromJson(Map<String, dynamic> json) {
    return Message(
      messageId: json['message_id'],
      from: json['from'] == null ? null : User.fromJson(json['from']),
      senderChat: json['sender_chat'] == null
          ? null
          : Chat.fromJson(json['sender_chat']),
      date: json['date'],
      chat: Chat.fromJson(json['chat']),
      forwardFrom: json['forward_from'] == null
          ? null
          : User.fromJson(json['forward_from']),
      forwardFromChat: json['forward_from_chat'] == null
          ? null
          : Chat.fromJson(json['forward_from_chat']),
      forwardFromMessageId: json['forward_from_message_id'],
      forwardSignature: json['forward_signature'],
      forwardSenderName: json['forward_sender_name'],
      forwardDate: json['forward_date'],
      replyToMessage: json['reply_to_message'] == null
          ? null
          : Message.fromJson(json['reply_to_message']),
      viaBot: json['via_bot'] == null ? null : User.fromJson(json['via_bot']),
      editDate: json['edit_date'],
      mediaGroupId: json['media_group_id'],
      authorSignature: json['author_signature'],
      text: json['text'],
      entities: (json['entities'] as List<dynamic>?)
          ?.map((e) => MessageEntity.fromJson(e))
          .toList(),
      animation: json['animation'] == null
          ? null
          : Animation.fromJson(json['animation']),
      audio: json['audio'] == null ? null : Audio.fromJson(json['audio']),
      document:
          json['document'] == null ? null : Document.fromJson(json['document']),
      photo: (json['photo'] as List<dynamic>?)
          ?.map((e) => PhotoSize.fromJson(e))
          .toList(),
      sticker:
          json['sticker'] == null ? null : Sticker.fromJson(json['sticker']),
      video: json['video'] == null ? null : Video.fromJson(json['video']),
      videoNote: json['video_note'] == null
          ? null
          : VideoNote.fromJson(json['video_note']),
      voice: json['voice'] == null ? null : Voice.fromJson(json['voice']),
      caption: json['caption'],
      captionEntities: (json['caption_entities'] as List<dynamic>?)
          ?.map((e) => MessageEntity.fromJson(e))
          .toList(),
      contact:
          json['contact'] == null ? null : Contact.fromJson(json['contact']),
      dice: json['dice'] == null ? null : Dice.fromJson(json['dice']),
      game: json['game'] == null ? null : Game.fromJson(json['game']),
      poll: json['poll'] == null ? null : Poll.fromJson(json['poll']),
      venue: json['venue'] == null ? null : Venue.fromJson(json['venue']),
      location:
          json['location'] == null ? null : Location.fromJson(json['location']),
      newChatMembers: (json['new_chat_members'] as List<dynamic>?)
          ?.map((e) => User.fromJson(e))
          .toList(),
      leftChatMember: json['left_chat_member'] == null
          ? null
          : User.fromJson(json['left_chat_member']),
      newChatTitle: json['new_chat_title'],
      newChatPhoto: (json['new_chat_photo'] as List<dynamic>?)
          ?.map((e) => PhotoSize.fromJson(e))
          .toList(),
      deleteChatPhoto: json['delete_chat_photo'],
      groupChatCreated: json['group_chat_created'],
      supergroupChatCreated: json['supergroup_chat_created'],
      channelChatCreated: json['channel_chat_created'],
      messageAutoDeleteTimerChanged:
          json['message_auto_delete_timer_changed'] == null
              ? null
              : MessageAutoDeleteTimerChanged.fromJson(
                  json['message_auto_delete_timer_changed']),
      migrateToChatId: json['migrate_to_chat_id'],
      migrateFromChatId: json['migrate_from_chat_id'],
      pinnedMessage: json['pinned_message'] == null
          ? null
          : Message.fromJson(json['pinned_message']),
      invoice:
          json['invoice'] == null ? null : Invoice.fromJson(json['invoice']),
      successfulPayment: json['successful_payment'] == null
          ? null
          : SuccessfulPayment.fromJson(json['successful_payment']),
      connectedWebsite: json['connected_website'],
      passportData: json['passport_data'] == null
          ? null
          : PassportData.fromJson(json['passport_data']),
      proximityAlertTriggered: json['proximity_alert_triggered'] == null
          ? null
          : ProximityAlertTriggered.fromJson(json['proximity_alert_triggered']),
      replyMarkup: json['reply_markup'] == null
          ? null
          : InlineKeyboardMarkup.fromJson(json['reply_markup']),
      isAutomaticForward: json['is_automatic_forward'],
      webAppData: json['web_app_data'] == null
          ? null
          : WebAppData.fromJson(json['web_app_data']),
      videoChatEnded: json['video_chat_ended'] == null
          ? null
          : VideoChatEnded.fromJson(json['video_chat_ended']),
      videoChatStarted: json['video_chat_started'] == null
          ? null
          : VideoChatStarted.fromJson(json['video_chat_started']),
      videoChatParticipantsInvited:
          json['video_chat_participants_invited'] == null
              ? null
              : VideoChatParticipantsInvited.fromJson(
                  json['video_chat_participants_invited']),
      videoChatScheduled: json['video_chat_scheduled'] == null
          ? null
          : VideoChatScheduled.fromJson(json['video_chat_scheduled']),
      forumTopicClosed: json['forum_topic_closed'] == null
          ? null
          : ForumTopicClosed.fromJson(json['forum_topic_closed']),
      forumTopicCreated: json['forum_topic_created'] == null
          ? null
          : ForumTopicCreated.fromJson(json['forum_topic_created']),
      forumTopicReopened: json['forum_topic_reopened'] == null
          ? null
          : ForumTopicReopened.fromJson(json['forum_topic_reopened']),
      hasProtectedContent: json['has_protected_content'],
      isTopicMessage: json['is_topic_message'],
      messageThreadId: json['message_thread_id'],
      userShared: json['user_shared'] == null
          ? null
          : UserShared.fromJson(json['user_shared']),
      chatShared: json['chat_shared'] == null
          ? null
          : ChatShared.fromJson(json['chat_shared']),
      hasMediaSpoiler: json['has_media_spoiler'],
      forumTopicEdited: json['forum_topic_edited'] == null
          ? null
          : ForumTopicEdited.fromJson(json['forum_topic_edited']),
      generalForumTopicHidden: json['general_forum_topic_hidden'] == null
          ? null
          : GeneralForumTopicHidden.fromJson(
              json['general_forum_topic_hidden']),
      generalForumTopicUnhidden: json['general_forum_topic_unhidden'] == null
          ? null
          : GeneralForumTopicUnhidden.fromJson(
              json['general_forum_topic_unhidden']),
      writeAccessAllowed: json['write_access_allowed'] == null
          ? null
          : WriteAccessAllowed.fromJson(json['write_access_allowed']),
    );
  }

  /// Returns the JSON representation of the Message object.
  Map<String, dynamic> toJson() {
    return {
      'message_id': messageId,
      'from': from?.toJson(),
      'sender_chat': senderChat?.toJson(),
      'date': date,
      'chat': chat.toJson(),
      'forward_from': forwardFrom?.toJson(),
      'forward_from_chat': forwardFromChat?.toJson(),
      'forward_from_message_id': forwardFromMessageId,
      'forward_signature': forwardSignature,
      'forward_sender_name': forwardSenderName,
      'forward_date': forwardDate,
      'reply_to_message': replyToMessage?.toJson(),
      'via_bot': viaBot?.toJson(),
      'edit_date': editDate,
      'media_group_id': mediaGroupId,
      'author_signature': authorSignature,
      'text': text,
      'entities': entities?.map((e) => e.toJson()).toList(),
      'animation': animation?.toJson(),
      'audio': audio?.toJson(),
      'document': document?.toJson(),
      'photo': photo?.map((e) => e.toJson()).toList(),
      'sticker': sticker?.toJson(),
      'video': video?.toJson(),
      'video_note': videoNote?.toJson(),
      'voice': voice?.toJson(),
      'caption': caption,
      'caption_entities': captionEntities?.map((e) => e.toJson()).toList(),
      'contact': contact?.toJson(),
      'dice': dice?.toJson(),
      'game': game?.toJson(),
      'poll': poll?.toJson(),
      'venue': venue?.toJson(),
      'location': location?.toJson(),
      'new_chat_members': newChatMembers?.map((e) => e.toJson()).toList(),
      'left_chat_member': leftChatMember?.toJson(),
      'new_chat_title': newChatTitle,
      'new_chat_photo': newChatPhoto?.map((e) => e.toJson()).toList(),
      'delete_chat_photo': deleteChatPhoto,
      'group_chat_created': groupChatCreated,
      'supergroup_chat_created': supergroupChatCreated,
      'channel_chat_created': channelChatCreated,
      'message_auto_delete_timer_changed':
          messageAutoDeleteTimerChanged?.toJson(),
      'migrate_to_chat_id': migrateToChatId,
      'migrate_from_chat_id': migrateFromChatId,
      'pinned_message': pinnedMessage?.toJson(),
      'invoice': invoice?.toJson(),
      'successful_payment': successfulPayment?.toJson(),
      'connected_website': connectedWebsite,
      'passport_data': passportData?.toJson(),
      'proximity_alert_triggered': proximityAlertTriggered?.toJson(),
      'reply_markup': replyMarkup?.toJson(),
      'is_automatic_forward': isAutomaticForward,
      'web_app_data': webAppData?.toJson(),
      'video_chat_ended': videoChatEnded?.toJson(),
      'video_chat_started': videoChatStarted?.toJson(),
      'video_chat_participants_invited': videoChatParticipantsInvited?.toJson(),
      'video_chat_scheduled': videoChatScheduled?.toJson(),
      'forum_topic_closed': forumTopicClosed?.toJson(),
      'forum_topic_created': forumTopicCreated?.toJson(),
      'forum_topic_reopened': forumTopicReopened?.toJson(),
      'has_protected_content': hasProtectedContent,
      'is_topic_message': isTopicMessage,
      'message_thread_id': messageThreadId,
      'user_shared': userShared?.toJson(),
      'chat_shared': chatShared?.toJson(),
      'has_media_spoiler': hasMediaSpoiler,
      'forum_topic_edited': forumTopicEdited?.toJson(),
      'general_forum_topic_hidden': generalForumTopicHidden?.toJson(),
      'general_forum_topic_unhidden': generalForumTopicUnhidden?.toJson(),
      'write_access_allowed': writeAccessAllowed?.toJson(),
    }..removeWhere((key, value) => value == null);
  }

  /// Getter for the [DateTime] object that represents the message sent date
  DateTime get dateTime => DateTime.fromMillisecondsSinceEpoch(date * 1000);

  /// Getter for the [DateTime] object that represents the message edit date
  DateTime? get editDateTime => editDate == null
      ? null
      : DateTime.fromMillisecondsSinceEpoch(editDate! * 1000);

  /// Getter for the [DateTime] object that represents the message forward date
  DateTime? get forwardDateTime => forwardDate == null
      ? null
      : DateTime.fromMillisecondsSinceEpoch(forwardDate! * 1000);

  /// Returns true if the message is a command
  bool get isCommand => entities != null && entities!.isNotEmpty
      ? entities!.first.type == MessageEntityType.botCommand &&
          entities!.first.offset == 0
      : false;

  /// Returns the text where the given [MessageEntityType] is found
  String? getEntityText(MessageEntityType type) {
    if (entities == null || entities!.isEmpty) return null;
    if ((text ?? caption) == null) return null;
    if (entities?.any((element) => element.type == type) != true) return null;
    final entity = (entities ?? captionEntities)
        ?.firstWhere((element) => element.type == type);
    if (entity == null) return null;
    String entxt =
        text!.substring(entity.offset, entity.offset + entity.length);

    switch (type) {
      case MessageEntityType.mention:
      case MessageEntityType.hashtag:
      case MessageEntityType.cashtag:
        entxt = entxt.substring(1);
        break;
      case MessageEntityType.botCommand:
        if (entxt.contains('@')) {
          entxt = entxt.substring(0, entxt.indexOf('@'));
        } else {
          entxt = entxt.substring(1);
        }
        break;
      case MessageEntityType.textMention:
      case MessageEntityType.url:
      case MessageEntityType.email:
      case MessageEntityType.phoneNumber:
      case MessageEntityType.bold:
      case MessageEntityType.italic:
      case MessageEntityType.underline:
      case MessageEntityType.strikethrough:
      case MessageEntityType.spoiler:
      case MessageEntityType.code:
      case MessageEntityType.pre:
      case MessageEntityType.textLink:
        break;
      case MessageEntityType.customEmoji:
        entxt = entity.customEmojiId!;
        break;
    }
    return entxt;
  }
}
