class ChatModel {
  late final String name;
  late final String message;
  late final String timeStamp;
  late final String avatarUrl;
  late final String messageUpdate;

  ChatModel(
      {required this.avatarUrl,
      required this.message,
      required this.messageUpdate,
      required this.name,
      required this.timeStamp});
}
