import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:help_me/core/common/index.dart';
import 'package:help_me/core/const_for_list_widgets/index.dart';
import 'package:help_me/core/services/index.dart';
import 'package:help_me/generated/i18n.dart';
import 'package:help_me/ui/decorations/index.dart';
import 'package:help_me/ui/widgets/bottom_list/index.dart';
import 'package:help_me/ui/widgets/button/index.dart';
import 'package:help_me/ui/widgets/text_filed/index.dart';
import 'package:image_picker/image_picker.dart';

class FinalCreatePage extends StatefulWidget {
  @override
  _FinalCreatePageSate createState() => _FinalCreatePageSate();
}

TextEditingController _textFiledValueController = TextEditingController();
ListForBottomListWidget _list =
    new ListForBottomListWidget(); //TODO: так бляд делать нельзя рома убери это нах1й от сюда!! где-то всплакнул один оопэшник :(
final List<BottomListItemModel> itmesList = [
  BottomListItemModel(title: 'No reason'),
  BottomListItemModel(title: 'Part time'),
  BottomListItemModel(title: 'Free schedule'),
  BottomListItemModel(title: 'Remote work'),
  BottomListItemModel(title: 'Half a day'),
];

class _FinalCreatePageSate extends State<FinalCreatePage> {
  File _image;

  @override
  Widget build(BuildContext context) {
    var localization = I18n.of(context);
    ListForBottomListWidget list = new ListForBottomListWidget();

    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(40.0), // here the desired height
        child: AppBar(
          elevation: 0.0,
          backgroundColor: Color(0xffffffffff),
          automaticallyImplyLeading: false,
          actions: <Widget>[
            IconButton(
              icon: SvgPicture.asset(
                Assets.closeIcon,
                color: Colors.red,
                height: 18.0,
              ),
              onPressed: () => navigationService.goBack(),
            )
          ],
        ),
      ),
      backgroundColor: Color(0xffffffffff),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Text(
                'New Advert',
                style: Theme.of(context).textTheme.headline6,
              ),
              const SizedBox(height: 40),
              Text('Some text'),
              BaseTextFiled(
                controller: _textFiledValueController,
                onTap: () => _showPicker(context, 'Work schedule'),
                hint: 'Enter name',
              ),
              const SizedBox(height: 20),
              Text('Some text'),
              BaseTextFiled(
                hint: 'Enter name',
              ),
              const SizedBox(height: 20),
              Text('Some text'),
              BaseTextFiled(
                hint: 'Enter name',
              ),
              const SizedBox(height: 20),
              Text('Some text'),
              BaseTextFiled(
                hint: 'Enter name',
              ),
              const SizedBox(height: 20),
              Row(
                children: [
                  InkWell(
                    onTap: () => {
                      _showImagePicker(context),
                    },
                    child: Container(
                      child: _image != null
                          ? ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Image.file(
                                _image,
                                width: 100,
                                height: 100,
                                fit: BoxFit.fitHeight,
                              ),
                            )
                          : Container(
                              decoration: BoxDecoration(
                                  color: Colors.grey[200],
                                  borderRadius: BorderRadius.circular(10)),
                              width: 100,
                              height: 100,
                              child: Icon(
                                Icons.camera_alt,
                                color: Colors.grey[800],
                              ),
                            ),
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    'Set Image',
                    textAlign: TextAlign.start,
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Text('Some text'),
              DescriptionTextFiled(hintText: 'Description'),
              const SizedBox(height: 30),
              PrimaryButtonWidget(
                text: 'Create',
                onPressedFunction: () => {
                  navigationService.navigateWithReplacementTo(Pages.shell),
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  _imgFromCamera() async {
    File image = await ImagePicker.pickImage(
        source: ImageSource.camera, imageQuality: 50);

    setState(() {
      _image = image;
    });
  }

  _imgFromGallery() async {
    File image = await ImagePicker.pickImage(
        source: ImageSource.gallery, imageQuality: 50);

    setState(() {
      _image = image;
    });
  }

  void _showImagePicker(context) {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext bc) {
        return SafeArea(
          child: Container(
            child: new Wrap(
              children: <Widget>[
                new ListTile(
                    leading: new Icon(Icons.photo_library),
                    title: new Text('Photo Library'),
                    onTap: () {
                      _imgFromGallery();
                      Navigator.of(context).pop();
                    }),
                new ListTile(
                  leading: new Icon(Icons.photo_camera),
                  title: new Text('Camera'),
                  onTap: () {
                    _imgFromCamera();
                    Navigator.of(context).pop();
                  },
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  void _showPicker(BuildContext context, String listTitle) {
    showModalBottomSheet(
      backgroundColor: Colors.transparent,
      context: context,
      builder: (BuildContext bc) {
        return BottomListWidget(
          listTitle: listTitle,
          itemsList: _list.getItems(),
          textFiledValueController: _textFiledValueController,
        );
      },
    );
  }
}
