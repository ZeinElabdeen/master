import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:master_avtar/helpers/appBar.dart';
import 'package:master_avtar/helpers/drawer.dart';

class PersonalInformation extends StatefulWidget {
  PersonalInformation({Key key}) : super(key: key);

  @override
  _PersonalInformationState createState() => _PersonalInformationState();
}

class _PersonalInformationState extends State<PersonalInformation> {
  File _image;
  @override
  void initState() {
    super.initState();
  }

  void open_gallery() async {
    var image = await ImagePicker.pickImage(source: ImageSource.gallery);
    setState(() {
      _image = image;
    });
  }

  void open_camera() async {
    var image = await ImagePicker.pickImage(source: ImageSource.camera);
    setState(() {
      _image = image;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        toolbarHeight: 50,
        title: Text(
          "تعديل معلوماتي",
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: Colors.black87,
          ),
        ),
        centerTitle: true,
        actions: [
          IconButton(
              icon: Icon(Icons.search),
              color: Color(0xFF6e262c),
              iconSize: 20,
              onPressed: () {
                showSearch(
                  context: context,
                  delegate: DataSearsh(),
                );
              })
        ],
        // iconTheme: IconThemeData(
        //   color: Color(0xFF6e262c),
        //   size: 20,
        // ),
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: Image.asset("assets/icons/appBar.png"),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
              tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
            );
          },
        ),
      ),
      drawer: DrawerMenu(),
      body: ListView(
        children: [
          Container(
            alignment: Alignment.center,
            padding: EdgeInsets.only(
              top: 40,
            ),
            child: Center(
              child: Container(
                alignment: Alignment.center,
                padding: EdgeInsets.all(10),
                height: 130.0,
                width: 130.0,
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height,
                      child: ClipRRect(
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(100),
                          topLeft: Radius.circular(100),
                          bottomLeft: Radius.circular(100),
                          bottomRight: Radius.circular(100),
                        ),
                        child: _image == null
                            ? Image.asset(
                                "assets/icons/file.png",
                                fit: BoxFit.cover,
                              )
                            : Image.file(
                                _image,
                                fit: BoxFit.cover,
                              ),
                      ),
                    ),
                    FloatingActionButton(
                      onPressed: () {
                        showModalBottomSheet(
                            context: context,
                            builder: (BuildContext context) {
                              return SafeArea(
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    ListTile(
                                      leading: Icon(Icons.camera),
                                      title: Text('Camera'),
                                      onTap: () {
                                        open_camera();
                                      },
                                    ),
                                    ListTile(
                                      leading: Icon(Icons.image),
                                      title: Text('Gallery'),
                                      onTap: () {
                                        open_gallery();
                                      },
                                    ),
                                  ],
                                ),
                              );
                            });
                      },
                      tooltip: 'New Image',
                      child: Image.asset("assets/icons/file.png"),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: () {
      //     print("zein");
      //     open_camera();
      //   },
      //   tooltip: 'Pick Image',
      //   child: Icon(Icons.add_a_photo),
      // ),
    );
  }
}
