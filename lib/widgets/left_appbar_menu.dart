import 'package:flutter/material.dart';
import 'package:mdg_services_order/themes/app_theme.dart';

class LeftAppbarMenu extends StatelessWidget {
  const LeftAppbarMenu({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: SizedBox(
      height: double.infinity,
      child: Row(
        children: [
          _menuModules(),
          Expanded(
            flex: 8,
            child: Container(
              color: Colors.white,
            ),
          ),
        ],
      ),
    ));
  }

  Expanded _menuModules() {
    return Expanded(
      flex: 4,
      child: Container(
        padding: const EdgeInsets.only(top: 10, bottom: 10),
        color: Colors.grey.shade200,
        height: double.infinity,
        child: Column(
          children: [
            SizedBox(
              height: 40,
              
              child: DrawerHeader(
                  child: Container(
                
              )),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10, bottom: 10),
              child: FloatingActionButton(
                backgroundColor: Colors.white,
                focusColor: AppTheme.primary,
                elevation: 0,
                shape: RoundedRectangleBorder(
                    side: BorderSide(width: 3, color: AppTheme.primary),
                    borderRadius: BorderRadius.circular(100)),
                child: Icon(
                  Icons.inventory_sharp,
                  color: Colors.grey.shade700,
                ),
                onPressed: () {
                  print('Inventory');
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10, bottom: 10),
              child: FloatingActionButton(
                backgroundColor: Colors.white,
                focusColor: AppTheme.primary,
                elevation: 0,
                shape: RoundedRectangleBorder(
                    side: BorderSide(width: 3, color: AppTheme.primary),
                    borderRadius: BorderRadius.circular(100)),
                child: Icon(
                  Icons.build,
                  color: Colors.grey.shade700,
                ),
                onPressed: () {
                  print('Services Order');
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
