// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'body_models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RegUserBody _$RegUserBodyFromJson(Map<String, dynamic> json) {
  return RegUserBody(
    id: json['id'] as int,
    email: json['email'] as String,
    phone: json['phone'] as String,
    password: json['password'] as String,
    user_key: json['user_key'] as String,
    first_name: json['first_name'] as String,
    last_name: json['last_name'] as String,
    city: json['city'] as String,
    adress_delivery: json['adress_delivery'] as String,
    photo_big: json['photo_big'] as String,
    uid: json['uid'] as String,
    network: json['network'] as String,
    ref_id: json['ref_id'] as int,
    like_places: json['like_places'] as String,
    like_tickets: json['like_tickets'] as String,
    like_events: json['like_events'] as String,
    experience: json['experience'] as int,
    experience_bool: json['experience_bool'] as int,
    level: json['level'] as int,
    cashback: json['cashback'] as String,
    admin: json['admin'] as int,
    chats: json['chats'] as String,
  );
}

Map<String, dynamic> _$RegUserBodyToJson(RegUserBody instance) =>
    <String, dynamic>{
      'id': instance.id,
      'email': instance.email,
      'phone': instance.phone,
      'password': instance.password,
      'user_key': instance.user_key,
      'first_name': instance.first_name,
      'last_name': instance.last_name,
      'city': instance.city,
      'adress_delivery': instance.adress_delivery,
      'photo_big': instance.photo_big,
      'uid': instance.uid,
      'network': instance.network,
      'ref_id': instance.ref_id,
      'like_places': instance.like_places,
      'like_tickets': instance.like_tickets,
      'like_events': instance.like_events,
      'chats': instance.chats,
      'experience': instance.experience,
      'experience_bool': instance.experience_bool,
      'level': instance.level,
      'cashback': instance.cashback,
      'admin': instance.admin,
    };

RegUserStringBody _$RegUserStringBodyFromJson(Map<String, dynamic> json) {
  return RegUserStringBody(
    json['id'] as String,
    json['user_key'] as String,
    json['first_name'] as String,
    json['last_name'] as String,
  );
}

Map<String, dynamic> _$RegUserStringBodyToJson(RegUserStringBody instance) =>
    <String, dynamic>{
      'id': instance.id,
      'user_key': instance.user_key,
      'first_name': instance.first_name,
      'last_name': instance.last_name,
    };

SingleChatHistoryBody _$SingleChatHistoryBodyFromJson(
    Map<String, dynamic> json) {
  return SingleChatHistoryBody(
    id: json['id'] as String,
    chat_id: json['chat_id'] as String,
    user: json['user'] as String,
    message: json['message'] as String,
    date: json['date'] as String,
    time: json['time'] as String,
    users: (json['users'] as List)
        ?.map((e) => e == null
            ? null
            : RegUserStringBody.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$SingleChatHistoryBodyToJson(
        SingleChatHistoryBody instance) =>
    <String, dynamic>{
      'id': instance.id,
      'chat_id': instance.chat_id,
      'user': instance.user,
      'message': instance.message,
      'date': instance.date,
      'time': instance.time,
      'users': instance.users,
    };

ChatMessageBody _$ChatMessageBodyFromJson(Map<String, dynamic> json) {
  return ChatMessageBody(
    first_name: json['first_name'] as String,
    chat_id: json['chat_id'] as String,
    user_key: json['user_key'] as String,
    last_name: json['last_name'] as String,
    message: json['message'] as String,
    date: json['date'] as String,
    time: json['time'] as String,
    photo: json['photo'] as String,
  );
}

Map<String, dynamic> _$ChatMessageBodyToJson(ChatMessageBody instance) =>
    <String, dynamic>{
      'first_name': instance.first_name,
      'chat_id': instance.chat_id,
      'last_name': instance.last_name,
      'user_key': instance.user_key,
      'message': instance.message,
      'date': instance.date,
      'time': instance.time,
      'photo': instance.photo,
    };

OrderBody _$OrderBodyFromJson(Map<String, dynamic> json) {
  return OrderBody(
    count: json['count'] as String,
    comment: json['comment'] as String,
    name: json['name'] as String,
    price: json['price'] as String,
  );
}

Map<String, dynamic> _$OrderBodyToJson(OrderBody instance) => <String, dynamic>{
      'name': instance.name,
      'comment': instance.comment,
      'count': instance.count,
      'price': instance.price,
    };
