import 'package:json_annotation/json_annotation.dart';
part 'body_models.g.dart';

@JsonSerializable()
class RegUserBody{
  RegUserBody({this.id, this.email, this.phone, this.password, this.user_key, this.first_name, this.last_name, this.city, this.adress_delivery, this.photo_big, this.uid, this.network, this.ref_id, this.like_places, this.like_tickets, this.like_events, this.experience, this.experience_bool, this.level, this.cashback, this.admin, this.chats});
  final int id;
  final String email;
  final String phone;
  final String password;
  final String user_key;
  final String first_name;
  final String last_name;
  final String city;
  final String adress_delivery;
  final String photo_big;
  final String uid;
  final String network;
  final int ref_id;
  final String like_places;
  final String like_tickets;
  final String like_events;
  final String chats;
  final int experience;
  final int experience_bool;
  final int level;
  final String cashback;
  final int admin;

  factory RegUserBody.fromJson(Map<String, dynamic> json) => _$RegUserBodyFromJson(json);
  Map<String, dynamic> toJson() => _$RegUserBodyToJson(this);
}

@JsonSerializable()
class RegUserStringBody{
  RegUserStringBody(this.id, this.user_key, this.first_name, this.last_name);
  final String id;
  final String user_key;
  final String first_name;
  final String last_name;

  factory RegUserStringBody.fromJson(Map<String, dynamic> json) => _$RegUserStringBodyFromJson(json);
  Map<String, dynamic> toJson() => _$RegUserStringBodyToJson(this);
}
@JsonSerializable()
class SingleChatHistoryBody {
  String id;
  String chat_id;
  String user;
  String message;
  String date;
  String time;
  List<RegUserStringBody> users;

  SingleChatHistoryBody({this.id, this.chat_id, this.user, this.message, this.date, this.time, this.users});

  factory SingleChatHistoryBody.fromJson(Map<String, dynamic> json) => _$SingleChatHistoryBodyFromJson(json);
  Map<String, dynamic> toJson() => _$SingleChatHistoryBodyToJson(this);
}

@JsonSerializable()
class ChatMessageBody {
  String first_name;
  String chat_id;
  String last_name;
  String user_key;
  String message;
  String date;
  String time;
  String photo;

  ChatMessageBody({this.first_name, this.chat_id, this.user_key, this.last_name, this.message, this.date, this.time, this.photo});

  factory ChatMessageBody.fromJson(Map<String, dynamic> json) => _$ChatMessageBodyFromJson(json);
  Map<String, dynamic> toJson() => _$ChatMessageBodyToJson(this);
}
@JsonSerializable()
class OrderBody {
  String name;
  String comment;
  String count;
  String price;

  OrderBody({this.count, this.comment, this.name, this.price});

  factory OrderBody.fromJson(Map<String, dynamic> json) => _$OrderBodyFromJson(json);
  Map<String, dynamic> toJson() => _$OrderBodyToJson(this);
}