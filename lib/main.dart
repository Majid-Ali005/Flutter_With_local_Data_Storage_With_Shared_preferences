import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main(){
  runApp(const Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

// this is the home Page

// tho hum ye chahtay hy k jaise hi koi aap ko open kare hamare tho pehly ki jo store value hy wo ajaye tho oss k liye
// humme ye stateless widget ko statefull me convert krna hoga.
//   q k satefull widget me humme aik inti state mil jata hy jo k pehly run hota hy etc.

class HomePage extends StatefulWidget {

  HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var nameController = TextEditingController();
  // yaha pr aap ko init state bnana hy

  // variable for key
   static const String KEYNAME = "name1";
  // screen pr print krne k liye hum aik variable ko banayenge.
  var nameValue = "No Value Saved";


  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getValue();
    // shorhand for function creation is to simple make this like body and then click on light and convert in function simple.
  }

  // const HomePage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("shared preferences"),
      ),

      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          
          children: [
            TextField(
              controller: nameController,
            ),

            Text(nameValue),
            //shared prefs me awiat lagaya hy tho phir aap ko await lagana zaroori hota hy.
            ElevatedButton(onPressed: () async{
              //ab jo b vlaue ayegi wo mujhe iss name me recieve hojayegi with the help of controller.
              var name = nameController.text.toString();

              //tho ab hum value ko stored krne k liye shared pref ka use karenge

              var prefs = await SharedPreferences.getInstance();

              // for to set value 
              prefs.setString(KEYNAME, name); // yaha pr ye dosra name upar jo controller wala hy wo name hy. aap variable k ilawa b direct b sotre krwa skaty ho.
              // key value pairs are required for different type os valaue storage like pass,thala etc.
              // data repeated ho sakta hy magr key must be unique.
            }, child: const Text("click here")),
          ],
        ),
      ),
    );
  }
  
  void getValue() async {
    var prefs = await SharedPreferences.getInstance();
    // ab hum iss ko get karenge magr aik baat yaad rakhna k jiss trha aap ne get kiya tha ossi type ko aap ko yaha
    // get krna hoga jaise string etc.
    // pr phir getstring k baad aap ko key de deni hy. q k aap ne value ko key k sath store kiya tha tho ab jub get
    // krwaoge tho key se hi karoge the main reason is this.
    var getName = prefs.getString(KEYNAME);

nameValue = getName!;
// ye mark iss wja se lagaya hy q k name null b ho sakta hy. to remove error.

// nameValue = getName !=null ? getName : "No Value Save";
// aap ye ternary operator b use kr sakty hy.

// nameValue = getName ?? "no value saved";
// aap iss ko b use kr skaty ho

// Note: Ab jo value hamare pass arhi hy oss ko tho screen k text pr update b tho krwana hy tho phir hum log set state krthy hy.

setState(() {
  
});

  }
}