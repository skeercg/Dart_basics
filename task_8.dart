class User {
  String email;

  User(this.email);
}

mixin UserMail {
  String getMailSystem(String email) {
    return email.substring(email.indexOf('@') + 1);
  }
}

class AdminUser extends User with UserMail {
  AdminUser(String email) : super(email);
}

class GeneralUser extends User {
  GeneralUser(String email) : super(email);
}

class UserManager<T extends User> {
  List<T> users = [];
  void addUser(T user) {
    users.add(user);
  }

  void deleteUser(T user) {
    users.remove(user);
  }

  void printUsers() {
    users.forEach((e) {
      if (e is AdminUser) {
        print(e.getMailSystem(e.email));
      } else {
        print(e.email);
      }
    });
  }
}

void main() {
  var users = UserManager();
  users.addUser(AdminUser('artur@bk.ru'));
  users.addUser(GeneralUser('robert@yandex.ru'));
  users.addUser(AdminUser('maxim@mail.ru'));
  users.printUsers();
}
