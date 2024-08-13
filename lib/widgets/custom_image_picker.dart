import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class CustomImagePicker extends StatelessWidget {
  final VoidCallback? onImagePick;
  final XFile? selectedImage;
  final String imageName;

  const CustomImagePicker({
    Key? key,
    required this.onImagePick,
    required this.selectedImage,
    required this.imageName,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onImagePick,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12.0),
        ),
        elevation: 4,
        child: Padding(
          padding: EdgeInsets.all(8.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                alignment: Alignment.topLeft,
                height: 70.0,
                width: 70.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12.0),
                  border: Border.all(color: Colors.grey.shade300),
                  color: Colors.grey.shade200,
                ),
                child: selectedImage != null
                    ? ClipRRect(
                        borderRadius: BorderRadius.circular(12.0),
                        child: Image.file(
                          File(selectedImage!.path),
                          fit: BoxFit.fill,
                        ),
                      )
                    : Center(
                        child: Icon(
                          Icons.image,
                          color: Colors.grey,
                          size: 50.0,
                        ),
                      ),
              ),
              SizedBox(width: 10.0),
              Expanded(
                child: Text(
                  imageName.isEmpty ? 'No image selected' : imageName,
                  overflow: TextOverflow.fade,
                  softWrap: false,
                  style: TextStyle(
                    fontSize: 16.0,
                    color: Colors.black54,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
