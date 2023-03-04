import 'package:blood_bank/configs/themes/app_theme.dart';
import 'package:blood_bank/widgets/export_widgets.dart';
import 'package:flutter/material.dart';

class CreateRequestPage extends StatelessWidget {
  static String id = 'create_request_page';
  const CreateRequestPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: CustomColors.backgroundColor,
          title: const Text(
            'Create a request',
            style: TextStyle(
              color: CustomColors.textColor,
            ),
          ),
        ),
        body: Column(
          children: <Widget>[
            CustomTextField(
                controller: null,
                onChanged: (value) {},
                labelText: 'Select Hospital',
                suffixIcon: null),
            Row(
              children: [
                Expanded(
                  child: CustomTextField(
                      controller: null,
                      onChanged: (value) {},
                      labelText: 'Date',
                      suffixIcon: const Icon(Icons.calendar_month)),
                ),
                const SizedBox(
                  width: 15,
                ),
                Expanded(
                  child: CustomTextField(
                      controller: null,
                      onChanged: (value) {},
                      labelText: 'Time',
                      suffixIcon: const Icon(Icons.timer)),
                ),
              ],
            ),
            CustomTextField(
                controller: null,
                onChanged: (value) {},
                labelText: 'Attachment',
                suffixIcon: null),
            CustomTextField(
              controller: null,
              onChanged: (value) {},
              labelText: 'Blood Group',
              suffixIcon: const Icon(
                Icons.water_drop,
                color: CustomColors.primaryColor,
              ),
            ),
            const SizedBox(
              height: 70,
            ),
            Padding(
              padding: const EdgeInsets.all(9.0),
              child: CustomMaterialButton(
                onPressed: () {},
                text: const Text('Search'),
              ),
            )
          ],
        ),
        bottomNavigationBar: const BottomNavBar(),
      ),
    );
  }
}
