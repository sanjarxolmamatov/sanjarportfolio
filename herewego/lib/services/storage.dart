import 'dart:io';

import 'package:firebase_storage/firebase_storage.dart';

class Storage{

static final _storage = FirebaseStorage.instance.ref();
static String _folder = "post_img";

static Future<String?> uploadImage(File file) async {
 final String img_name = "image_"+ DateTime.now().toString().replaceAll(" ", "");
 final img_ref = _storage.child(_folder).child(img_name);

 final _upload = await img_ref.putFile(file).whenComplete(() => {});

 return img_ref.getDownloadURL();

}



}