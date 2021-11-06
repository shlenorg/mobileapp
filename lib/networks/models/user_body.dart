class UserBody{
  UserBody(this.phone, this.password, this.first_name, this.last_name, this.id_check);

  final String phone;
  final String password;
  final String first_name;
  final String last_name;
  final String id_check;

  getPhone() => this.phone;
  getPassword() => this.password;
  getFirstName() => this.first_name;
  getLastName() => this.last_name;
  getIdCheck() => this.last_name;
}