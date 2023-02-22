import 'package:flutter/material.dart';

class task extends StatefulWidget {
  const task({Key? key}) : super(key: key);

  @override
  _taskState createState() => _taskState();
}

class _taskState extends State<task> {
  var namecon = TextEditingController();
  var phonecon = TextEditingController();
  var passwordcon = TextEditingController() ;
  var emalcon = TextEditingController();
  late FocusNode namefocus;
  late FocusNode phonefoucus;
  late FocusNode mailfocus;
  late FocusNode passwordfocus;
  late FocusNode pasconformfocus;
  bool showPassword = true;
  bool showConformPassword = true;
  late IconData passwordSufIcon ;
  late IconData conformSuficon;


  @override
   void initState() {
   //  TODO: implement initState
     super.initState();
    namefocus = FocusNode();
     phonefoucus = FocusNode();
     mailfocus = FocusNode();
     passwordfocus = FocusNode();
     pasconformfocus= FocusNode();
    namefocus.addListener(() {
      setState(() {});});
     phonefoucus.addListener(() {
       setState(() {});});
     mailfocus.addListener(() {
       setState(() {});});
     passwordfocus.addListener(() {
       setState(() {});});
     pasconformfocus.addListener(() {
       setState(() {});});

   }
   @override
   void dispose() {
     // TODO: implement dispose
     super.dispose();
     namefocus.dispose();
     phonefoucus.dispose();
     mailfocus.dispose();
     passwordfocus.dispose();
     pasconformfocus.dispose();
   }

  @override
  Widget build(BuildContext context) {
    passwordSufIcon = showPassword?Icons.visibility : Icons.visibility_off;
    conformSuficon = showConformPassword ?Icons.visibility : Icons.visibility_off;
    return Scaffold(
      // appBar: AppBar(
      //   backgroundColor: Colors.deepPurple,
      //   elevation: 0.0,
      // ),
     body: SingleChildScrollView(
       child: Column(
         children: [
           ClipPath(
             clipper: CustomClipPath(),
             child: Container(
               height: 250,
               width: double.infinity,
               color: Colors.deepPurple,
               alignment: Alignment.centerLeft,
               child:
                const Padding(
                  padding: EdgeInsets.only(bottom: 50.0,left: 30,top: 50),
                  child: Text("Register",style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 35,
                  ),),
                ),
             ),
           ),
           const SizedBox(
             height: 15,
           ),
           Padding(
             padding: const EdgeInsets.only(left: 30,right: 30, bottom: 30, top: 10),
             child: Column(
               children: [
                 TextFormField(
                  focusNode: namefocus,
                   controller: namecon,
                   keyboardType: TextInputType.text,
                  cursorColor: Colors.deepPurple,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    focusedBorder:OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: const BorderSide(width: 1.0 , color: Colors.deepPurple)
                    ),
                     filled: true,
                     fillColor: Colors.grey[100],
                     prefixIcon:  Icon(Icons.person,color: namefocus.hasFocus? Colors.deepPurple : Colors.grey[600]),
                    labelText: "Full Name",
                    labelStyle: TextStyle(
                      color: namefocus.hasFocus? Colors.deepPurple : Colors.grey[600]
                    )
                   ),

                 ),
                 const SizedBox(
                   height: 10,
                 ),
                 TextFormField(
                   focusNode: phonefoucus,
                   controller: phonecon,
                   keyboardType: TextInputType.phone,
                   cursorColor: Colors.deepPurple,
                   decoration: InputDecoration(
                     border: InputBorder.none,
                     focusedBorder: OutlineInputBorder(
                         borderRadius: BorderRadius.circular(10),
                         borderSide: const BorderSide(width: 1.0 , color: Colors.deepPurple)
                     ),
                     filled: true,
                     fillColor: Colors.grey[100],
                     prefixIcon:  Icon(Icons.phone_android,color: phonefoucus.hasFocus ? Colors.deepPurple : Colors.grey[600]),
                     label:  Text("Phone Number",style: TextStyle(
                         color: phonefoucus.hasFocus? Colors.deepPurple : Colors.grey[600]
                     ),),
                   ),
                 ),
                 const SizedBox(
                   height: 10,
                 ),
                 TextFormField(
                   focusNode: mailfocus,
                   controller: emalcon,
                   keyboardType: TextInputType.emailAddress,
                   cursorColor: Colors.deepPurple,
                   decoration: InputDecoration(
                     border: InputBorder.none,
                     focusedBorder:OutlineInputBorder( borderRadius: BorderRadius.circular(10),
                         borderSide: const BorderSide(width: 1.0 , color: Colors.deepPurple)

                     ),
                     filled: true,
                     fillColor: Colors.grey[100],
                     prefixIcon:  Icon(Icons.email,color: mailfocus.hasFocus ? Colors.deepPurple : Colors.grey[600]),
                     label:  Text("Email Adress",style: TextStyle(
                         color: mailfocus.hasFocus? Colors.deepPurple : Colors.grey[600]
                     ),),
                   ),

                 ),
                 const SizedBox(
                   height: 10,
                 ),
                 TextFormField(
                   focusNode: passwordfocus,
                   controller: passwordcon,
                   obscureText: showPassword,
                   keyboardType: TextInputType.visiblePassword,
                   cursorColor: Colors.deepPurple,
                   decoration: InputDecoration(
                     border: InputBorder.none,
                     focusedBorder: OutlineInputBorder(
                         borderRadius: BorderRadius.circular(10),
                         borderSide: const BorderSide(width: 1.0 , color: Colors.deepPurple)
                     ),
                     filled: true,
                     fillColor: Colors.grey[100],
                     prefixIcon:  Icon(Icons.lock,color: passwordfocus.hasFocus ? Colors.deepPurple : Colors.grey[600]),
                    suffixIcon: IconButton(
                        icon: Icon(passwordSufIcon),
                        onPressed: (){
                          setState(() {
                            showPassword=!showPassword;
                          });
                        },
                        color: passwordfocus.hasFocus ? Colors.deepPurple : Colors.grey[600]),
                     label:  Text(" Password",style: TextStyle(
                         color: passwordfocus.hasFocus? Colors.deepPurple : Colors.grey[600]
                     ),),
                   ),
                 ),
                 const SizedBox(
                   height: 10,
                 ),
                 TextFormField(
                   focusNode: pasconformfocus,
                   obscureText: showConformPassword,
                   keyboardType: TextInputType.visiblePassword,
                   cursorColor: Colors.deepPurple,
                   decoration: InputDecoration(
                     border: InputBorder.none,
                     focusedBorder: OutlineInputBorder(
                         borderRadius: BorderRadius.circular(10),
                         borderSide: const BorderSide(width: 1.0 , color: Colors.deepPurple)
                     ),
                     filled: true,
                     fillColor: Colors .grey[100],
                     prefixIcon:  Icon(Icons.lock,color: pasconformfocus.hasFocus ? Colors.deepPurple :Colors.grey[600]),
                     suffixIcon: IconButton(
                       icon: Icon(conformSuficon),
                     onPressed: (){
                         setState(() {
                           showConformPassword=!showConformPassword;
                         });
                     },
                     color: pasconformfocus.hasFocus ? Colors.deepPurple :Colors.grey[600]),
                     label:  Text("Conform Password",style: TextStyle(
                         color: pasconformfocus.hasFocus? Colors.deepPurple : Colors.grey[600]
                     ),),
                   ),
                 ),
                 const SizedBox(
                   height: 20,
                 ),
                 Container(
                   width: double.infinity,
                   height: 60,
                   decoration: BoxDecoration(
                       borderRadius: BorderRadius.circular(8),
                       color: Colors.deepPurple
                   ),
                   child:
                   MaterialButton(
                     onPressed: (){
                       print("name is ${namecon.text} \n "
                           "phone number is ${phonecon.text} \n "
                           "Email is ${emalcon.text}\n"
                           "password is ${passwordcon.text}");
                     },
                     child: const Text("Register",style: TextStyle(
                       color: Colors.white,
                       fontSize: 20,
                       fontWeight: FontWeight.bold
                     ),),
                   ),
                 ),
                 const SizedBox(
                   height: 10,
                 ),
                 Container(
                   width: double.infinity,
                   height: 60,
                   decoration: BoxDecoration(
                     borderRadius: BorderRadius.circular(8),
                    border: Border.all(width: 1.0, color: Colors.black)
                   ),
                   child: MaterialButton(
                     onPressed: (){
                       return namefocus.requestFocus();
                     },

                     child: const Text("Login",style: TextStyle(
                         color: Colors.deepPurple,
                         fontSize: 20,
                         fontWeight: FontWeight.bold
                     ),),
                   ),
                 ),
               ],
             ),
           ),


         ],
       ),
     ),
    );
  }
  // void requestFocus(){
  //   setState(() {
  //     FocusScope.of(context).requestFocus(myFocusNode);
  //   });
  // }
}
class CustomClipPath extends CustomClipper<Path> {
  var radius=20.0;
  @override
  Path getClip(Size size) {
    var path =  Path();
    path.lineTo(0, size.height- 40);
    //start path with this if you are making at bottom
    var firstStart = Offset(size.width / 5, size.height);
    //fist point of quadratic bezier curve
    var firstEnd = Offset(size.width / 2.5, size.height - 50.0);
    //second point of quadratic bezier curve
   path.quadraticBezierTo(firstStart.dx, firstStart.dy, firstEnd.dx, firstEnd.dy);

    var secondStart = Offset(size.width - (size.width / 3.24), size.height - 105);
    //third point of quadratic bezier curve
    var secondEnd = Offset(size.width, size.height - 10);
    //fourth point of quadratic bezier curve
    path.quadraticBezierTo(secondStart.dx, secondStart.dy, secondEnd.dx, secondEnd.dy);

    path.lineTo(size.width, 0); //end with this path if you are making wave at bottom
    path.close();
    return path;
  }
  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
