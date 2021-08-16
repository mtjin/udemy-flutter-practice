import 'package:flutter/material.dart';


// main() 은 모든 플러터앱의 시작점이다.
void main() {
  runApp(MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        title: Text("I Am Rich"),
        backgroundColor: Colors.blueGrey[900],
      ),
      body: Center(
        child: Image( // NetworkImage는 Url을 통해 서버이미지를 가져올때 사용합니다. 안드로이드의 Glide라고 생각!, 그밖에 AssetImage 등 다른것들도 있습니다.
          image: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQnYB7pV4de12zrKQayds0fU56TBYw06fYaqQ&usqp=CAU'),
        ),
      ),
    )
  ));
}
