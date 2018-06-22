Sử dụng thư viện convert của Dart

```dart
import 'dart:convert';
```

Có 2 cách để xử lý json.
**Opt 1: xử lý trực tiếp thông qua json.decode**
```json
    // Opt 1
    Map<String, dynamic> data = json.decode(data_json);
    print('Opt 2: \n Tên:  ${data['name']}');
    print('Tuổi:  ${data['age']}');
```
**Opt 2: Tạo đối tượng sử dụng**

```dart
class User {
  final String name;
  final int age;

  User(this.name, this.age);

  User.fromJson(Map<String, dynamic> json)
      : name = json['name'],
        age = json['age'];

  Map<String, dynamic> toJson() =>
    {
      'name': name,
      'email': age,
    };
}
```

Gọi hàm sử dụng 
```dart 
  // Opt 2
  Map userMap = json.decode(data_json);
  var user = new User.fromJson(userMap);
  
  print('Opt 2: \n Tên:  ${user.name}');
  print('Tuổi:  ${user.age}');
```

Log in ra:
```log
Launching lib\main.dart on EVA L19 in debug mode...
Built build\app\outputs\apk\debug\app-debug.apk.
I/FlutterActivityDelegate(14345): onResume setting current activity to this
I/flutter (14345): HieuLog Load text: {
I/flutter (14345):   "name"   : "TrungHieuTran",
I/flutter (14345):   "age"  : 18
I/flutter (14345): }
I/flutter (14345): Opt 1:
I/flutter (14345):  Tên:  TrungHieuTran
I/flutter (14345): Tuổi:  18
I/flutter (14345): Opt 2:
I/flutter (14345):  Tên:  TrungHieuTran
I/flutter (14345): Tuổi:  18

```

Link tham khảo:
- document: https://flutter.io/json/ 
- source: https://github.com/HieuTranTrung1204/TrainingFlutter/tree/research/json