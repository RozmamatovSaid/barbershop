import 'package:barbershop/core/utils/icons.dart';
import 'package:barbershop/widgets/detail_barber_widgets/action_button_item.dart';
import 'package:flutter/material.dart';

class ActionButtonWidget extends StatelessWidget {
  const ActionButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        ActionButtonItem(icon: AppIcons.map, title: "Maps"),
        ActionButtonItem(icon: AppIcons.chat, title: "Chat"),
        ActionButtonItem(icon: AppIcons.share, title: "Share"),
        ActionButtonItem(icon: AppIcons.like, title: "Favorite"),
      ],
    );
  }
}
