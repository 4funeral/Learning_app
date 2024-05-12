class Registration {
  final String username;
  final String password;
  final  String email;
  final String confirmPass;

  Registration({
    this. username='',
    this. password='',
    this. email= '',
    this. confirmPass= '',
  });

  Registration copy({String? username, String? password, String? email,
    String? confirmPass}){


    return Registration(
      username:username??this.username,
      email: email??this.email,
      password: password??this.password,
      confirmPass: confirmPass??this.confirmPass,


    );
  }

}

void main() {
  Registration reg = Registration(username: 'komg');
  print(reg.username);

  var copyObject=reg.copy(username: 'long');

  print(copyObject.username);

  Registration reg2 = Registration(username: 'king');


  print(reg2.username);
}