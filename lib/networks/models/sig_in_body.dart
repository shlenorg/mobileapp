import 'package:json_annotation/json_annotation.dart';
part 'sig_in_body.g.dart';

@JsonSerializable()
class SendPhone {
  String phone;
  String key;

  SendPhone({this.phone, this.key});

  factory SendPhone.fromJson(Map<String, dynamic> json) => _$SendPhoneFromJson(json);
  Map<String, dynamic> toJson() => _$SendPhoneToJson(this);
}

@JsonSerializable()
class SendSMS {
  String phone;
  String key;
  String sms_code;

  SendSMS({this.phone, this.key, this.sms_code});

  factory SendSMS.fromJson(Map<String, dynamic> json) => _$SendSMSFromJson(json);
  Map<String, dynamic> toJson() => _$SendSMSToJson(this);
}

@JsonSerializable()
class ApplicationBody {
  String uuid;
  String broker;

  ApplicationBody({this.uuid, this.broker});

  factory ApplicationBody.fromJson(Map<String, dynamic> json) => _$ApplicationBodyFromJson(json);
  Map<String, dynamic> toJson() => _$ApplicationBodyToJson(this);
}

@JsonSerializable()
class BrokerListBody {
  int result;
  String detail;
  List<ApplicationBody> application;

  BrokerListBody({this.result, this.detail, this.application});

  factory BrokerListBody.fromJson(Map<String, dynamic> json) => _$BrokerListBodyFromJson(json);
  Map<String, dynamic> toJson() => _$BrokerListBodyToJson(this);
}

@JsonSerializable()
class SendNotificationDta {
  String registration_id;
  String device_id;
  String type;

  SendNotificationDta({this.registration_id, this.device_id, this.type});

  factory SendNotificationDta.fromJson(Map<String, dynamic> json) => _$SendNotificationDtaFromJson(json);
  Map<String, dynamic> toJson() => _$SendNotificationDtaToJson(this);
}

@JsonSerializable()
class GetToken {
  String access_token;
  String refresh_token;
  int result;
  String detail;
  int user_id;

  GetToken({this.access_token, this.refresh_token, this.result, this.detail, this.user_id});

  factory GetToken.fromJson(Map<String, dynamic> json) => _$GetTokenFromJson(json);
  Map<String, dynamic> toJson() => _$GetTokenToJson(this);

}

@JsonSerializable()
class RefreshTokenSet {
  String refresh_token;

  RefreshTokenSet({this.refresh_token});

  factory RefreshTokenSet.fromJson(Map<String, dynamic> json) => _$RefreshTokenSetFromJson(json);
  Map<String, dynamic> toJson() => _$RefreshTokenSetToJson(this);
}

@JsonSerializable()
class RefreshTokenBody {
  String access_token;
  String refresh_token;
  int result;
  String detail;

  RefreshTokenBody({this.access_token, this.result, this.detail, this.refresh_token});

  factory RefreshTokenBody.fromJson(Map<String, dynamic> json) => _$RefreshTokenBodyFromJson(json);
  Map<String, dynamic> toJson() => _$RefreshTokenBodyToJson(this);
}

@JsonSerializable()
class CheckError {
  int result;
  String detail;

  CheckError({this.result, this.detail});

  factory CheckError.fromJson(Map<String, dynamic> json) => _$CheckErrorFromJson(json);
  Map<String, dynamic> toJson() => _$CheckErrorToJson(this);
}