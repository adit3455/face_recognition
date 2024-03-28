import 'package:another_flushbar/flushbar.dart';
import 'package:flutter/material.dart';
import 'package:socfindo_page_absensi/shared/theme.dart';
import 'package:socfindo_page_absensi/utils/show_alert_asking.dart';
import 'package:socfindo_page_absensi/utils/show_alert_dialog.dart';
import 'package:socfindo_page_absensi/widgets/custom_button.dart';
import 'package:socfindo_page_absensi/widgets/custom_button_color.dart';

class AlertBox {
  notifyMessage(BuildContext context, String title, String message) {
    return showModalBottomSheet(
      context: context,
      builder: (context) {
        return Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Container(
              width: 80,
              height: 80,
              margin: const EdgeInsets.only(top: 20, bottom: 50),
              decoration: const BoxDecoration(
                  image: DecorationImage(
                image: AssetImage(
                  'assets/image_seru.png',
                ),
              )),
            ),
            Text(
              title,
              style: blackText.copyWith(fontSize: 30, fontWeight: boldText),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 30,
            ),
            Container(
              padding: const EdgeInsets.all(20),
              child: Text(
                message,
                style:
                    mediumBlack.copyWith(fontSize: 18, fontWeight: mediumText),
                textAlign: TextAlign.center,
              ),
            ),
            Container(
              margin: const EdgeInsets.all(20),
              child: CustomButton(
                  title: 'Tutup',
                  onPressed: () {
                    Navigator.of(context).pop();
                  }),
            ),
          ]),
        );
      },
    );
  }

  notifyError(BuildContext context, String title, String message) {
    return showModalBottomSheet(
      context: context,
      builder: (context) {
        return Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Container(
              width: 80,
              height: 80,
              margin: const EdgeInsets.only(top: 20, bottom: 50),
              decoration: const BoxDecoration(
                  image: DecorationImage(
                image: AssetImage(
                  'assets/image_error.png',
                ),
              )),
            ),
            Text(
              title,
              style: blackText.copyWith(fontSize: 30, fontWeight: boldText),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 30,
            ),
            Container(
              padding: const EdgeInsets.all(20),
              child: Text(
                message,
                style:
                    mediumBlack.copyWith(fontSize: 18, fontWeight: mediumText),
                textAlign: TextAlign.center,
              ),
            ),
            Container(
              margin: const EdgeInsets.all(20),
              child: CustomButtonColor(
                  color: cRedColor,
                  title: 'Ok',
                  onPressed: () {
                    Navigator.of(context).pop();
                  }),
            ),
          ]),
        );
      },
    );
  }

  notifyErrorWithButton(BuildContext context, String title, String message,
      String buttonName, VoidCallback onPage) {
    return showModalBottomSheet(
      context: context,
      builder: (context) {
        return Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Container(
              width: 80,
              height: 80,
              margin: const EdgeInsets.only(top: 20, bottom: 50),
              decoration: const BoxDecoration(
                  image: DecorationImage(
                image: AssetImage(
                  'assets/image_error.png',
                ),
              )),
            ),
            Text(
              title,
              style: blackText.copyWith(fontSize: 30, fontWeight: boldText),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 30,
            ),
            Container(
              padding: const EdgeInsets.all(20),
              child: Text(
                message,
                style:
                    mediumBlack.copyWith(fontSize: 18, fontWeight: mediumText),
                textAlign: TextAlign.center,
              ),
            ),
            Container(
              margin: const EdgeInsets.all(20),
              child: CustomButtonColor(
                  color: cRedColor, title: buttonName, onPressed: onPage),
            ),
          ]),
        );
      },
    );
  }

  notifySuccess(BuildContext context, String title, String message) {
    return showModalBottomSheet(
      context: context,
      builder: (context) {
        return Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Container(
              width: 80,
              height: 80,
              margin: const EdgeInsets.only(top: 20, bottom: 50),
              decoration: const BoxDecoration(
                  image: DecorationImage(
                image: AssetImage(
                  'assets/image_success.png',
                ),
              )),
            ),
            Text(
              title,
              style: blackText.copyWith(fontSize: 30, fontWeight: boldText),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 30,
            ),
            Container(
              padding: const EdgeInsets.all(20),
              child: Text(
                message,
                style:
                    mediumBlack.copyWith(fontSize: 18, fontWeight: mediumText),
                textAlign: TextAlign.center,
              ),
            ),
            Container(
              margin: const EdgeInsets.all(20),
              child: CustomButton(
                  title: 'Ok',
                  onPressed: () {
                    Navigator.of(context).pop();
                  }),
            ),
          ]),
        );
      },
    );
  }

  notifyWarning(BuildContext context, String title, String message) {
    return showModalBottomSheet(
      context: context,
      builder: (context) {
        return Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Container(
              width: 80,
              height: 80,
              margin: const EdgeInsets.only(top: 20, bottom: 50),
              decoration: const BoxDecoration(
                  image: DecorationImage(
                image: AssetImage(
                  'assets/image_warning.png',
                ),
              )),
            ),
            Text(
              title,
              style: blackText.copyWith(fontSize: 30, fontWeight: boldText),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 30,
            ),
            Container(
              padding: const EdgeInsets.all(20),
              child: Text(
                message,
                style:
                    mediumBlack.copyWith(fontSize: 18, fontWeight: mediumText),
                textAlign: TextAlign.center,
              ),
            ),
            Container(
              margin: const EdgeInsets.all(20),
              child: CustomButtonColor(
                  color: cOrangeColor,
                  title: 'Ok',
                  onPressed: () {
                    Navigator.of(context).pop();
                  }),
            ),
          ]),
        );
      },
    );
  }

  warningAlert(BuildContext context, String title, String message,
      Function yesModule, Function noModule) {
    return showModalBottomSheet(
      context: context,
      builder: (context) {
        return Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Container(
              width: 80,
              height: 80,
              margin: const EdgeInsets.only(top: 20, bottom: 50),
              decoration: const BoxDecoration(
                  image: DecorationImage(
                image: AssetImage(
                  'assets/image_seru.png',
                ),
              )),
            ),
            Text(
              title,
              style: blackText.copyWith(fontSize: 30, fontWeight: boldText),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 30,
            ),
            Container(
              padding: const EdgeInsets.all(20),
              child: Text(
                message,
                style:
                    mediumBlack.copyWith(fontSize: 18, fontWeight: mediumText),
                textAlign: TextAlign.center,
              ),
            ),
            Container(
              padding: const EdgeInsets.all(20),
              child: Row(
                children: [
                  Expanded(
                    child: CustomButtonColor(
                      color: cRedColor,
                      title: 'Tidak',
                      onPressed: () async {
                        Navigator.of(context).pop();
                        noModule();
                      },
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: CustomButton(
                      title: 'Ya',
                      onPressed: () async {
                        Navigator.of(context).pop();
                        await yesModule();
                      },
                    ),
                  ),
                ],
              ),
            ),
          ]),
        );
      },
    );
  }

  warningAlertSmall(BuildContext context, String title, String message,
      Function yesModule, Function noModule) {
    return showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      builder: (context) {
        return FractionallySizedBox(
          heightFactor: 0.3,
          child: Center(
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              Container(
                padding: const EdgeInsets.all(20),
                child: Text(
                  message,
                  style: mediumBlack.copyWith(
                      fontSize: 18, fontWeight: mediumText),
                  textAlign: TextAlign.center,
                ),
              ),
              Container(
                padding: const EdgeInsets.all(20),
                child: Row(
                  children: [
                    Expanded(
                      child: CustomButtonColor(
                        color: cRedColor,
                        title: 'Tidak',
                        onPressed: () async {
                          Navigator.of(context).pop();
                          noModule();
                        },
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: CustomButton(
                        title: 'Ya',
                        onPressed: () async {
                          Navigator.of(context).pop();
                          await yesModule();
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ]),
          ),
        );
      },
    );
  }

  warningAlertMaxKm(BuildContext context, String title, String message,
      Function yesModule, Function noModule) {
    return showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      builder: (context) {
        return FractionallySizedBox(
          heightFactor: 0.3,
          child: Center(
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              Container(
                padding: const EdgeInsets.all(20),
                child: Text(
                  message,
                  style: mediumBlack.copyWith(
                      fontSize: 18, fontWeight: mediumText),
                  textAlign: TextAlign.center,
                ),
              ),
              Container(
                padding: const EdgeInsets.all(20),
                child: Row(
                  children: [
                    Expanded(
                      child: CustomButtonColor(
                        color: cGreyColor,
                        title: 'Tidak',
                        onPressed: () async {
                          Navigator.of(context).pop();
                          noModule();
                        },
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: CustomButtonColor(
                        color: cRedColor,
                        title: 'Ya',
                        onPressed: () async {
                          Navigator.of(context).pop();
                          await yesModule();
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ]),
          ),
        );
      },
    );
  }

  showNotification(BuildContext context, String title, String message) async {
    await Flushbar(
      backgroundColor: cRedColor,
      title: title,
      message: message,
      duration: const Duration(seconds: 3),
    ).show(context);
  }

  showSuccess(BuildContext context, String title, String message) async {
    await Flushbar(
      backgroundColor: Colors.green,
      title: title,
      message: message,
      duration: const Duration(seconds: 3),
    ).show(context);
  }

  showDialog(BuildContext context, String title, String message) async {
    return showAlertDialog(
      context: context,
      title: title,
      content: message,
    );
  }

  showAskDialog(BuildContext context, String title, String message,
      Function yesAction) async {
    bool askUser =
        await showAlertAsking(context: context, title: title, content: message);

    if (askUser == true) {
      await yesAction();
    }
  }
}
