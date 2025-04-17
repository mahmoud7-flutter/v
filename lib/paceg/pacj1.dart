// import 'package:flutter/material.dart';
//  import 'package:drop_down_list/drop_down_list.dart';
//  import 'package:drop_down_list/model/selected_list_item.dart';

// /// This is Common App textfiled class.
// class AppTextField extends StatefulWidget {
//   final TextEditingController textEditingController;
//   final String title;
//   final String hint;
//   final bool isCitySelected;
//   final List<SelectedListItem>? datalist;

//   const AppTextField({
//     required this.textEditingController,
//     required this.title,
//     required this.hint,
//     required this.isCitySelected,
//     this.datalist,
//     Key? key,
//   }) : super(key: key);

//   @override
//   _AppTextFieldState createState() => _AppTextFieldState();
// }

// class SelectedListItem {
//   late String name;
// }

// class _AppTextFieldState extends State<AppTextField> {
//   /// This is on text changed method which will display on city text field on changed.
//   void onTextFieldTap() {
//     DropDownState(
//       DropDown(
//         isDismissible: true,
//         bottomSheetTitle: const Text(
//         "  kCities",
//           style: TextStyle(
//             fontWeight: FontWeight.bold,
//             fontSize: 20.0,
//           ),
//         ),
//         submitButtonChild: const Text(
//           'Done',
//           style: TextStyle(
//             fontSize: 16,
//             fontWeight: FontWeight.bold,
//           ),
//         ),
//         data: widget.datalist ?? [],
//         selectedItems: (List<dynamic> selectedList) {
//           List<String> list = [];
//           for (var item in selectedList) {
//             if (item is SelectedListItem) {
//               list.add(item.name);
//             }
//           }
//           showSnackBar(list.toString());
//         },
//         enableMultipleSelection: true,
//       ),
//     ).showModal(context);
//   }

//   void showSnackBar(String message) {
//     ScaffoldMessenger.of(context)
//         .showSnackBar(SnackBar(content: Text(message)));
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         Text(widget.title),
//         const SizedBox(
//           height: 5.0,
//         ),
//         TextFormField(
//           controller: widget.textEditingController,
//           cursorColor: Colors.black,
//           onTap: widget.isCitySelected
//               ? () {
//                   FocusScope.of(context).unfocus();
//                   onTextFieldTap();
//                 }
//               : null,
//           decoration: InputDecoration(
//             filled: true,
//             fillColor: Colors.black12,
//             contentPadding:
//                 const EdgeInsets.only(left: 8, bottom: 0, top: 0, right: 15),
//             hintText: widget.hint,
//             border: const OutlineInputBorder(
//               borderSide: BorderSide(
//                 width: 0,
//                 style: BorderStyle.none,
//               ),
//               borderRadius: BorderRadius.all(
//                 Radius.circular(8.0),
//               ),
//             ),
//           ),
//         ),
//         const SizedBox(
//           height: 15.0,
//         ),
//       ],
//     );
//   }
  
//   DropDown({required bool isDismissible, required Text bottomSheetTitle, required Text submitButtonChild, required List<dynamic> data, required Null Function(List selectedList) selectedItems, required bool enableMultipleSelection}) {}
  
//   DropDownState(dropDown) {}
// }





//ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:drop_down_list/drop_down_list.dart';
import 'package:drop_down_list/model/selected_list_item.dart';

class AppTextField extends StatelessWidget {
  final TextEditingController textEditingController;
  final String title;
  final String hint;
  final List<SelectedListItem> datalist;
  final bool isCitySelected;

  const AppTextField({
    super.key,
    required this.textEditingController,
    required this.title,
    required this.hint,
    required this.datalist,
    required this.isCitySelected,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        DropDownState(
          DropDown(
            bottomSheetTitle: Text(
              title,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
            submitButtonChild: const Text(
              "اختيار",
              style: TextStyle(color: Colors.white),
            ),
            data: datalist,
            selectedItems: (List<dynamic> selectedList) {
              if (selectedList.isNotEmpty) {
                textEditingController.text = selectedList.first.name;
              }
            },
            isSearchVisible: true,
          ),
        ).showModal(context);
        
        
      },
      child: AbsorbPointer(
        child: TextFormField(
          controller: textEditingController,
          decoration: InputDecoration(
            labelText: title,
            hintText: hint,
            suffixIcon: const Icon(Icons.arrow_drop_down),
            border: const OutlineInputBorder(),
          ),
        ),
      ),
    );
  }
}