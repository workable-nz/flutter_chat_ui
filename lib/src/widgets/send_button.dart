import 'package:flutter/material.dart';
import 'inherited_chat_theme.dart';
import 'inherited_l10n.dart';

/// A class that represents send button widget
class SendButton extends StatelessWidget {
  /// Creates send button widget
  const SendButton({
    Key? key,
    required this.onPressed,
  }) : super(key: key);

  /// Callback for send button tap event
  final void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 48,
      margin: const EdgeInsets.only(left: 6),
      width: 48,
      child: IconButton(
        icon: InheritedChatTheme.of(context).theme.sendButtonIcon != null
            ? InheritedChatTheme.of(context).theme.sendButtonIcon!
            : Image.asset(
                'assets/icon-send.png',
                color: InheritedChatTheme.of(context).theme.inputTextColor,
                package: 'flutter_chat_ui',
              ),
        onPressed: onPressed,
        padding: const EdgeInsets.fromLTRB(6, 12, 12, 12),
        tooltip: InheritedL10n.of(context).l10n.sendButtonAccessibilityLabel,
      ),
    );
  }
}
