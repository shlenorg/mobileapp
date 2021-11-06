// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sig_in_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SendPhone _$SendPhoneFromJson(Map<String, dynamic> json) {
  return SendPhone(
    phone: json['phone'] as String,
    key: json['key'] as String,
  );
}

Map<String, dynamic> _$SendPhoneToJson(SendPhone instance) => <String, dynamic>{
      'phone': instance.phone,
      'key': instance.key,
    };

SendSMS _$SendSMSFromJson(Map<String, dynamic> json) {
  return SendSMS(
    phone: json['phone'] as String,
    key: json['key'] as String,
    sms_code: json['sms_code'] as String,
  );
}

Map<String, dynamic> _$SendSMSToJson(SendSMS instance) => <String, dynamic>{
      'phone': instance.phone,
      'key': instance.key,
      'sms_code': instance.sms_code,
    };

ApplicationBody _$ApplicationBodyFromJson(Map<String, dynamic> json) {
  return ApplicationBody(
    uuid: json['uuid'] as String,
    broker: json['broker'] as String,
  );
}

Map<String, dynamic> _$ApplicationBodyToJson(ApplicationBody instance) =>
    <String, dynamic>{
      'uuid': instance.uuid,
      'broker': instance.broker,
    };

BrokerListBody _$BrokerListBodyFromJson(Map<String, dynamic> json) {
  return BrokerListBody(
    result: json['result'] as int,
    detail: json['detail'] as String,
    application: (json['application'] as List)
        ?.map((e) => e == null
            ? null
            : ApplicationBody.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$BrokerListBodyToJson(BrokerListBody instance) =>
    <String, dynamic>{
      'result': instance.result,
      'detail': instance.detail,
      'application': instance.application,
    };

SendNotificationDta _$SendNotificationDtaFromJson(Map<String, dynamic> json) {
  return SendNotificationDta(
    registration_id: json['registration_id'] as String,
    device_id: json['device_id'] as String,
    type: json['type'] as String,
  );
}

Map<String, dynamic> _$SendNotificationDtaToJson(
        SendNotificationDta instance) =>
    <String, dynamic>{
      'registration_id': instance.registration_id,
      'device_id': instance.device_id,
      'type': instance.type,
    };

GetToken _$GetTokenFromJson(Map<String, dynamic> json) {
  return GetToken(
    access_token: json['access_token'] as String,
    refresh_token: json['refresh_token'] as String,
    result: json['result'] as int,
    detail: json['detail'] as String,
    user_id: json['user_id'] as int,
  );
}

Map<String, dynamic> _$GetTokenToJson(GetToken instance) => <String, dynamic>{
      'access_token': instance.access_token,
      'refresh_token': instance.refresh_token,
      'result': instance.result,
      'detail': instance.detail,
      'user_id': instance.user_id,
    };

RefreshTokenSet _$RefreshTokenSetFromJson(Map<String, dynamic> json) {
  return RefreshTokenSet(
    refresh_token: json['refresh_token'] as String,
  );
}

Map<String, dynamic> _$RefreshTokenSetToJson(RefreshTokenSet instance) =>
    <String, dynamic>{
      'refresh_token': instance.refresh_token,
    };

RefreshTokenBody _$RefreshTokenBodyFromJson(Map<String, dynamic> json) {
  return RefreshTokenBody(
    access_token: json['access_token'] as String,
    result: json['result'] as int,
    detail: json['detail'] as String,
    refresh_token: json['refresh_token'] as String,
  );
}

Map<String, dynamic> _$RefreshTokenBodyToJson(RefreshTokenBody instance) =>
    <String, dynamic>{
      'access_token': instance.access_token,
      'refresh_token': instance.refresh_token,
      'result': instance.result,
      'detail': instance.detail,
    };

CheckError _$CheckErrorFromJson(Map<String, dynamic> json) {
  return CheckError(
    result: json['result'] as int,
    detail: json['detail'] as String,
  );
}

Map<String, dynamic> _$CheckErrorToJson(CheckError instance) =>
    <String, dynamic>{
      'result': instance.result,
      'detail': instance.detail,
    };
