import 'dart:io';

import 'package:json_annotation/json_annotation.dart';
part 'user_profile.g.dart';

@JsonSerializable()
class UserProfileBody {
  UserProfileBodyUser user;
  int result;
  String detail;
  UserProfileBody({this.user, this.result, this.detail});

  factory UserProfileBody.fromJson(Map<String, dynamic> json) => _$UserProfileBodyFromJson(json);
  Map<String, dynamic> toJson() => _$UserProfileBodyToJson(this);
}

@JsonSerializable()
class UserProfileBodyUser {
  int id;
  String phone;
  bool phone_confirmed;
  String email;
  bool email_confirmed;
  String first_name;
  String last_name;
  String second_name;
  String birthday;
  String language_code;
  bool is_admin;
  bool is_active;
  String date_joined;
  String ukey;

  UserProfileBodyUser({this.id, this.phone, this.phone_confirmed, this.email, this.email_confirmed, this.first_name, this.last_name, this.second_name, this.birthday, this.language_code, this.is_admin, this.is_active, this.date_joined, this.ukey});

  factory UserProfileBodyUser.fromJson(Map<String, dynamic> json) => _$UserProfileBodyUserFromJson(json);
  Map<String, dynamic> toJson() => _$UserProfileBodyUserToJson(this);
}

@JsonSerializable()
class RegUserProfileBody {
  String first_name;
  String last_name;
  String second_name;
  String birthday;

  RegUserProfileBody({this.first_name, this.last_name, this.second_name, this.birthday});

  factory RegUserProfileBody.fromJson(Map<String, dynamic> json) => _$RegUserProfileBodyFromJson(json);
  Map<String, dynamic> toJson() => _$RegUserProfileBodyToJson(this);
}

@JsonSerializable()
class GetUserDocBody {
  UserDocuments document;
  int result;
  String detail;

  GetUserDocBody({this.result, this.detail, this.document});

  factory GetUserDocBody.fromJson(Map<String, dynamic> json) => _$GetUserDocBodyFromJson(json);
  Map<String, dynamic> toJson() => _$GetUserDocBodyToJson(this);
}

@JsonSerializable()
class VerifBody {
  int user_pk ;
  int user_approved ;

  VerifBody({this.user_pk , this.user_approved });

  factory VerifBody.fromJson(Map<String, dynamic> json) => _$VerifBodyFromJson(json);
  Map<String, dynamic> toJson() => _$VerifBodyToJson(this);
}

@JsonSerializable()
class UserDocuments {
  int id;
  String inn_photo;
  String docs_pdf;
  bool inn_refuse;
  bool migrated_person;
  int passport_type;
  String passport_photo;
  String docs_pdf_sign;
  String passport_photo2;
  String passport_photo3;
  String passport_photo4;
  String passport_photo5;
  String passport_photo6;

  UserDocuments({this.id, this.inn_photo, this.docs_pdf, this.inn_refuse, this.passport_type, this.passport_photo, this.docs_pdf_sign, this.passport_photo2, this.passport_photo3, this.passport_photo4, this.passport_photo5, this.passport_photo6, this.migrated_person});

  factory UserDocuments.fromJson(Map<String, dynamic> json) => _$UserDocumentsFromJson(json);
  Map<String, dynamic> toJson() => _$UserDocumentsToJson(this);
}

@JsonSerializable()
class GetBankIdBody {
  List<BankProvider> provider;
  int result;
  String detail;

  GetBankIdBody({this.result, this.detail, this.provider});

  factory GetBankIdBody.fromJson(Map<String, dynamic> json) => _$GetBankIdBodyFromJson(json);
  Map<String, dynamic> toJson() => _$GetBankIdBodyToJson(this);
}

@JsonSerializable()
class GetBankIdStatusBody {
  int result;
  String detail;
  int status_result;
  String status_detail;

  GetBankIdStatusBody({this.result, this.detail, this.status_result, this.status_detail});

  factory GetBankIdStatusBody.fromJson(Map<String, dynamic> json) => _$GetBankIdStatusBodyFromJson(json);
  Map<String, dynamic> toJson() => _$GetBankIdStatusBodyToJson(this);
}

@JsonSerializable()
class GetSignDocBody {
  int result;
  String detail;
  String file_id;

  GetSignDocBody({this.result, this.detail, this.file_id});

  factory GetSignDocBody.fromJson(Map<String, dynamic> json) => _$GetSignDocBodyFromJson(json);
  Map<String, dynamic> toJson() => _$GetSignDocBodyToJson(this);
}

@JsonSerializable()
class BankProvider {
  String id;
  String name;
  String logoUrl;
  bool workable;
  String redirect_url;

  BankProvider({this.id, this.name, this.logoUrl, this.workable, this.redirect_url});

  factory BankProvider.fromJson(Map<String, dynamic> json) => _$BankProviderFromJson(json);
  Map<String, dynamic> toJson() => _$BankProviderToJson(this);
}

@JsonSerializable()
class RegEmail {
  String email;

  RegEmail({this.email});

  factory RegEmail.fromJson(Map<String, dynamic> json) => _$RegEmailFromJson(json);
  Map<String, dynamic> toJson() => _$RegEmailToJson(this);
}

@JsonSerializable()
class RegUkey {
  String ukey;

  RegUkey({this.ukey});

  factory RegUkey.fromJson(Map<String, dynamic> json) => _$RegUkeyFromJson(json);
  Map<String, dynamic> toJson() => _$RegUkeyToJson(this);
}

@JsonSerializable()
class GetVerificationBody {
  Verification verification;
  int result;
  String detail;

  GetVerificationBody({this.verification, this.result, this.detail});

  factory GetVerificationBody.fromJson(Map<String, dynamic> json) => _$GetVerificationBodyFromJson(json);
  Map<String, dynamic> toJson() => _$GetVerificationBodyToJson(this);
}

@JsonSerializable()
class GetNotificationsBody {
  NotificationsBody notification;
  int result;
  String detail;
  Map<String, dynamic> choices;

  GetNotificationsBody({this.notification, this.result, this.detail, this.choices});

  factory GetNotificationsBody.fromJson(Map<String, dynamic> json) => _$GetNotificationsBodyFromJson(json);
  Map<String, dynamic> toJson() => _$GetNotificationsBodyToJson(this);
}

@JsonSerializable()
class Verification {
  bool broker_verified;
  bool bankid_confirmed;
  bool phone_confirmed;
  bool email_confirmed;
  bool document_uploaded;
  bool document_signed;
  bool ukey_filled;
  bool system_verified;
  bool user_approved;
  bool broker_docs_passed;
  bool user_doc_signment_process;
  bool broker_doc_signment_process;
  bool broker_docs_signed;
  bool broker_docs_approved;
  bool user_pass_bankid;
  bool user_data_filled;

  Verification({this.broker_verified, this.user_pass_bankid, this.bankid_confirmed, this.phone_confirmed, this.broker_docs_approved, this.email_confirmed, this.document_signed, this.user_doc_signment_process, this.broker_doc_signment_process, this.document_uploaded, this.ukey_filled, this.system_verified, this.user_approved, this.broker_docs_passed, this.broker_docs_signed, this.user_data_filled});

  factory Verification.fromJson(Map<String, dynamic> json) => _$VerificationFromJson(json);
  Map<String, dynamic> toJson() => _$VerificationToJson(this);
}

@JsonSerializable()
class NotificationsBody {
  int id;
  bool sms_allowed;
  bool email_allowed;
  bool push_allowed;
  int user;
  Map<String, dynamic> notification_allowed;

  NotificationsBody({this.sms_allowed, this.id, this.user, this.email_allowed, this.push_allowed, this.notification_allowed});

  factory NotificationsBody.fromJson(Map<String, dynamic> json) => _$NotificationsBodyFromJson(json);
  Map<String, dynamic> toJson() => _$NotificationsBodyToJson(this);
}
