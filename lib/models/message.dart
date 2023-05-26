class Message {
  Message({
    required this.id,
    required this.profileId,
    required this.content,
    required this.createdAt,
    required this.isMine,
  });
  // Message ID
  final String id;
  //User ID (Who posted the message)
  final String profileId;
  //Message Text content
  final String content;
  //Date and time when the message was created
  final DateTime createdAt;
  // Whether the message is sent by the user or not
  final bool isMine;
  Message.fromMap({
    required Map<String, dynamic> map,
    required String myUserId,
  })  : id = map['id'],
        profileId = map['profile_id'],
        content = map['content'],
        createdAt = DateTime.parse(map['created_at']),
        isMine = myUserId == map['profile_id'];
}
