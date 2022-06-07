class User{
  String nameTitle;
  String firstName;
  String lastName;
  String email;
  String phone;
  String imageUrl;
  int age;
  String gender;
  String userName;
  String password;
  String uuid;
  String area;
  String city;
  String state;
  String country;
  String pincode;

  User({
     required this.nameTitle,
     required this.firstName,
     required this.lastName,
     required this.email,
     required this.phone,
     required this.imageUrl,
     required this.age,
     required this.gender,
     required this.userName,
     required this.password,
     required this.uuid,
     required this.area,
     required this.city,
     required this.state,
     required this.country,
     required this.pincode
  });

  factory User.fromJson(Map<String, dynamic> data){
    return User(
        nameTitle: data['name']['title'],
        firstName: data['name']['first'],
        lastName: data['name']['last'],
        email: data['email'],
        phone: data['phone'],
        imageUrl: data['picture']['large'],
        age: data['dob']['age'],
        gender: data['gender'],
        userName: data['login']['username'],
        password: data['login']['password'],
        uuid: data['login']['uuid'],
        area: "${data['location']['street']['number'].toString()} ${data['location']['street']['name']}",
        city: data['location']['city'],
        state: data['location']['state'],
        country: data['location']['country'],
        pincode: data['location']['postcode'].toString(),
    );
  }
}