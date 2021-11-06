// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_profile.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserProfileBody _$UserProfileBodyFromJson(Map<String, dynamic> json) {
  return UserProfileBody(
    user: json['user'] == null
        ? null
        : UserProfileBodyUser.fromJson(json['user'] as Map<String, dynamic>),
    result: json['result'] as int,
    detail: json['detail'] as String,
  );
}

Map<String, dynamic> _$UserProfileBodyToJson(UserProfileBody instance) =>
    <String, dynamic>{
      'user': instance.user,
      'result': instance.result,
      'detail': instance.detail,
    };

UserProfileBodyUser _$UserProfileBodyUserFromJson(Map<String, dynamic> json) {
  return UserProfileBodyUser(
    id: json['id'] as int,
    phone: json['phone'] as String,
    phone_confirmed: json['phone_confirmed'] as bool,
    email: json['email'] as String,
    email_confirmed: json['email_confirmed'] as bool,
    first_name: json['first_name'] as String,
    last_name: json['last_name'] as String,
    second_name: json['second_name'] as String,
    birthday: json['birthday'] as String,
    language_code: json['language_code'] as String,
    is_admin: json['is_admin'] as bool,
    is_active: json['is_active'] as bool,
    date_joined: json['date_joined'] as String,
    ukey: json['ukey'] as String,
  );
}

Map<String, dynamic> _$UserProfileBodyUserToJson(
        UserProfileBodyUser instance) =>
    <String, dynamic>{
      'id': instance.id,
      'phone': instance.phone,
      'phone_confirmed': instance.phone_confirmed,
      'email': instance.email,
      'email_confirmed': instance.email_confirmed,
      'first_name': instance.first_name,
      'last_name': instance.last_name,
      'second_name': instance.second_name,
      'birthday': instance.birthday,
      'language_code': instance.language_code,
      'is_admin': instance.is_admin,
      'is_active': instance.is_active,
      'date_joined': instance.date_joined,
      'ukey': instance.ukey,
    };

RegUserProfileBody _$RegUserProfileBodyFromJson(Map<String, dynamic> json) {
  return RegUserProfileBody(
    first_name: json['first_name'] as String,
    last_name: json['last_name'] as String,
    second_name: json['second_name'] as String,
    birthday: json['birthday'] as String,
  );
}

Map<String, dynamic> _$RegUserProfileBodyToJson(RegUserProfileBody instance) =>
    <String, dynamic>{
      'first_name': instance.first_name,
      'last_name': instance.last_name,
      'second_name': instance.second_name,
      'birthday': instance.birthday,
    };

GetUserDocBody _$GetUserDocBodyFromJson(Map<String, dynamic> json) {
  return GetUserDocBody(
    result: json['result'] as int,
    detail: json['detail'] as String,
    document: json['document'] == null
        ? null
        : UserDocuments.fromJson(json['document'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$GetUserDocBodyToJson(GetUserDocBody instance) =>
    <String, dynamic>{
      'document': instance.document,
      'result': instance.result,
      'detail': instance.detail,
    };

VerifBody _$VerifBodyFromJson(Map<String, dynamic> json) {
  return VerifBody(
    user_pk: json['user_pk'] as int,
    user_approved: json['user_approved'] as int,
  );
}

Map<String, dynamic> _$VerifBodyToJson(VerifBody instance) => <String, dynamic>{
      'user_pk': instance.user_pk,
      'user_approved': instance.user_approved,
    };

UserDocuments _$UserDocumentsFromJson(Map<String, dynamic> json) {
  return UserDocuments(
    id: json['id'] as int,
    inn_photo: json['inn_photo'] as String,
    docs_pdf: json['docs_pdf'] as String,
    inn_refuse: json['inn_refuse'] as bool,
    passport_type: json['passport_type'] as int,
    passport_photo: json['passport_photo'] as String,
    docs_pdf_sign: json['docs_pdf_sign'] as String,
    passport_photo2: json['passport_photo2'] as String,
    passport_photo3: json['passport_photo3'] as String,
    passport_photo4: json['passport_photo4'] as String,
    passport_photo5: json['passport_photo5'] as String,
    passport_photo6: json['passport_photo6'] as String,
    migrated_person: json['migrated_person'] as bool,
  );
}

Map<String, dynamic> _$UserDocumentsToJson(UserDocuments instance) =>
    <String, dynamic>{
      'id': instance.id,
      'inn_photo': instance.inn_photo,
      'docs_pdf': instance.docs_pdf,
      'inn_refuse': instance.inn_refuse,
      'migrated_person': instance.migrated_person,
      'passport_type': instance.passport_type,
      'passport_photo': instance.passport_photo,
      'docs_pdf_sign': instance.docs_pdf_sign,
      'passport_photo2': instance.passport_photo2,
      'passport_photo3': instance.passport_photo3,
      'passport_photo4': instance.passport_photo4,
      'passport_photo5': instance.passport_photo5,
      'passport_photo6': instance.passport_photo6,
    };

GetBankIdBody _$GetBankIdBodyFromJson(Map<String, dynamic> json) {
  return GetBankIdBody(
    result: json['result'] as int,
    detail: json['detail'] as String,
    provider: (json['provider'] as List)
        ?.map((e) =>
            e == null ? null : BankProvider.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$GetBankIdBodyToJson(GetBankIdBody instance) =>
    <String, dynamic>{
      'provider': instance.provider,
      'result': instance.result,
      'detail': instance.detail,
    };

GetBankIdStatusBody _$GetBankIdStatusBodyFromJson(Map<String, dynamic> json) {
  return GetBankIdStatusBody(
    result: json['result'] as int,
    detail: json['detail'] as String,
    status_result: json['status_result'] as int,
    status_detail: json['status_detail'] as String,
  );
}

Map<String, dynamic> _$GetBankIdStatusBodyToJson(
        GetBankIdStatusBody instance) =>
    <String, dynamic>{
      'result': instance.result,
      'detail': instance.detail,
      'status_result': instance.status_result,
      'status_detail': instance.status_detail,
    };

GetSignDocBody _$GetSignDocBodyFromJson(Map<String, dynamic> json) {
  return GetSignDocBody(
    result: json['result'] as int,
    detail: json['detail'] as String,
    file_id: json['file_id'] as String,
  );
}

Map<String, dynamic> _$GetSignDocBodyToJson(GetSignDocBody instance) =>
    <String, dynamic>{
      'result': instance.result,
      'detail': instance.detail,
      'file_id': instance.file_id,
    };

BankProvider _$BankProviderFromJson(Map<String, dynamic> json) {
  return BankProvider(
    id: json['id'] as String,
    name: json['name'] as String,
    logoUrl: json['logoUrl'] as String,
    workable: json['workable'] as bool,
    redirect_url: json['redirect_url'] as String,
  );
}

Map<String, dynamic> _$BankProviderToJson(BankProvider instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'logoUrl': instance.logoUrl,
      'workable': instance.workable,
      'redirect_url': instance.redirect_url,
    };

RegEmail _$RegEmailFromJson(Map<String, dynamic> json) {
  return RegEmail(
    email: json['email'] as String,
  );
}

Map<String, dynamic> _$RegEmailToJson(RegEmail instance) => <String, dynamic>{
      'email': instance.email,
    };

RegUkey _$RegUkeyFromJson(Map<String, dynamic> json) {
  return RegUkey(
    ukey: json['ukey'] as String,
  );
}

Map<String, dynamic> _$RegUkeyToJson(RegUkey instance) => <String, dynamic>{
      'ukey': instance.ukey,
    };

GetVerificationBody _$GetVerificationBodyFromJson(Map<String, dynamic> json) {
  return GetVerificationBody(
    verification: json['verification'] == null
        ? null
        : Verification.fromJson(json['verification'] as Map<String, dynamic>),
    result: json['result'] as int,
    detail: json['detail'] as String,
  );
}

Map<String, dynamic> _$GetVerificationBodyToJson(
        GetVerificationBody instance) =>
    <String, dynamic>{
      'verification': instance.verification,
      'result': instance.result,
      'detail': instance.detail,
    };

GetNotificationsBody _$GetNotificationsBodyFromJson(Map<String, dynamic> json) {
  return GetNotificationsBody(
    notification: json['notification'] == null
        ? null
        : NotificationsBody.fromJson(
            json['notification'] as Map<String, dynamic>),
    result: json['result'] as int,
    detail: json['detail'] as String,
    choices: json['choices'] as Map<String, dynamic>,
  );
}

Map<String, dynamic> _$GetNotificationsBodyToJson(
        GetNotificationsBody instance) =>
    <String, dynamic>{
      'notification': instance.notification,
      'result': instance.result,
      'detail': instance.detail,
      'choices': instance.choices,
    };

Verification _$VerificationFromJson(Map<String, dynamic> json) {
  return Verification(
    broker_verified: json['broker_verified'] as bool,
    user_pass_bankid: json['user_pass_bankid'] as bool,
    bankid_confirmed: json['bankid_confirmed'] as bool,
    phone_confirmed: json['phone_confirmed'] as bool,
    broker_docs_approved: json['broker_docs_approved'] as bool,
    email_confirmed: json['email_confirmed'] as bool,
    document_signed: json['document_signed'] as bool,
    user_doc_signment_process: json['user_doc_signment_process'] as bool,
    broker_doc_signment_process: json['broker_doc_signment_process'] as bool,
    document_uploaded: json['document_uploaded'] as bool,
    ukey_filled: json['ukey_filled'] as bool,
    system_verified: json['system_verified'] as bool,
    user_approved: json['user_approved'] as bool,
    broker_docs_passed: json['broker_docs_passed'] as bool,
    broker_docs_signed: json['broker_docs_signed'] as bool,
    user_data_filled: json['user_data_filled'] as bool,
  );
}

Map<String, dynamic> _$VerificationToJson(Verification instance) =>
    <String, dynamic>{
      'broker_verified': instance.broker_verified,
      'bankid_confirmed': instance.bankid_confirmed,
      'phone_confirmed': instance.phone_confirmed,
      'email_confirmed': instance.email_confirmed,
      'document_uploaded': instance.document_uploaded,
      'document_signed': instance.document_signed,
      'ukey_filled': instance.ukey_filled,
      'system_verified': instance.system_verified,
      'user_approved': instance.user_approved,
      'broker_docs_passed': instance.broker_docs_passed,
      'user_doc_signment_process': instance.user_doc_signment_process,
      'broker_doc_signment_process': instance.broker_doc_signment_process,
      'broker_docs_signed': instance.broker_docs_signed,
      'broker_docs_approved': instance.broker_docs_approved,
      'user_pass_bankid': instance.user_pass_bankid,
      'user_data_filled': instance.user_data_filled,
    };

NotificationsBody _$NotificationsBodyFromJson(Map<String, dynamic> json) {
  return NotificationsBody(
    sms_allowed: json['sms_allowed'] as bool,
    id: json['id'] as int,
    user: json['user'] as int,
    email_allowed: json['email_allowed'] as bool,
    push_allowed: json['push_allowed'] as bool,
    notification_allowed: json['notification_allowed'] as Map<String, dynamic>,
  );
}

Map<String, dynamic> _$NotificationsBodyToJson(NotificationsBody instance) =>
    <String, dynamic>{
      'id': instance.id,
      'sms_allowed': instance.sms_allowed,
      'email_allowed': instance.email_allowed,
      'push_allowed': instance.push_allowed,
      'user': instance.user,
      'notification_allowed': instance.notification_allowed,
    };
