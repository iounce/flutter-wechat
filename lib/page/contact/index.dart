import 'package:flutter/material.dart';
import 'package:azlistview/azlistview.dart';
import 'package:get/get.dart';
import '../../common/model/contact.dart';
import '../../common/utils/contact.dart';
import 'controller.dart';

class ContactPage extends StatelessWidget {
  ContactPage({super.key});

  final ContactController _contactController = Get.put(ContactController());

  @override
  Widget build(BuildContext context) {
    return AzListView(
      data: _contactController.contactList,
      itemCount: _contactController.contactList.length,
      itemBuilder: (BuildContext context, int index) {
        ContactModel model = _contactController.contactList[index];
        return ContactUtils.getWeChatListItem(
          context,
          model,
          defHeaderBgColor: const Color(0xFFE5E5E5),
        );
      },
      physics: const BouncingScrollPhysics(),
      susItemBuilder: (BuildContext context, int index) {
        ContactModel model = _contactController.contactList[index];
        if ('↑' == model.getSuspensionTag()) {
          return Container();
        }
        return ContactUtils.getSusItem(context, model.getSuspensionTag());
      },
      indexBarData: const ['↑', '☆', ...kIndexBarData],
      indexBarOptions: IndexBarOptions(
        needRebuild: true,
        ignoreDragCancel: true,
        downTextStyle: const TextStyle(fontSize: 12, color: Colors.white),
        downItemDecoration: const BoxDecoration(shape: BoxShape.circle, color: Colors.green),
        indexHintWidth: 120 / 2,
        indexHintHeight: 100 / 2,
        indexHintDecoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(ContactUtils.getImgPath('ic_index_bar_bubble_gray')),
            fit: BoxFit.contain,
          ),
        ),
        indexHintAlignment: Alignment.centerRight,
        indexHintChildAlignment: const Alignment(-0.25, 0.0),
        indexHintOffset: const Offset(-20, 0),
      ),
    );
  }
}