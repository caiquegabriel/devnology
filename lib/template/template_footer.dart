import 'package:devnology/helpers.dart';
import 'package:devnology/style.dart';
import 'package:devnology/template/template_button.dart';
import 'package:flutter/cupertino.dart';

class TemplateFooter extends StatefulWidget {
  const TemplateFooter({Key? key}) : super(key: key);

  @override
  TemplateFooterState createState() => TemplateFooterState();
}

class TemplateFooterState extends State<TemplateFooter> {

  final GlobalKey<TemplateButtonState> _btnCart = GlobalKey();
  final GlobalKey<TemplateButtonState> _btnHome = GlobalKey();

  Map<String, GlobalKey<TemplateButtonState>> _btnsState = {};

  double _proportion = 1;

  @override
  void initState(){ 
    super.initState();

    _btnsState['/'] = _btnHome;
    _btnsState['/home'] = _btnHome;
    _btnsState['/cart'] = _btnCart;
 
    WidgetsBinding.instance.addPostFrameCallback((_) {
      var currentRoute = ModalRoute.of(context);

      if(currentRoute!=null){

        String currentRouteName = currentRoute.settings.name.toString();
        
        if(!mounted) return; 

        _btnsState.forEach((k, v){ 
          if(k == currentRouteName && v.currentState != null){ 
            v.currentState!.currentButton(true); 
          } else {
            // v.currentState!.currentButton(false); 
          }
        });
        
      }
      _getProportion();
    });
  }

  void _getProportion() {
    _proportion = MediaQuery.of(context).size.width / figmaAppWidth;
    setState(() {
      _proportion = _proportion;
    });
  }
  
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: templateFooterHeight + MediaQuery.of(context).padding.bottom,
      decoration: const BoxDecoration(
        color: primaryColor
      ),
      child: SafeArea(
        top: false,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: TemplateButton(
                width: 50,
                height: 50,
                icon: CupertinoIcons.home,
                text: "Home",
                key: _btnHome,
                iconSize: 18 * _proportion,
                fontSize: 11 * _proportion,
                onClick: () {
                  navigatorPushNamed(context, '/');
                },
              ),
            ),
            Expanded(
              child: TemplateButton(
                width: 50,
                height: 50,
                icon: CupertinoIcons.search,
                text: "Search",
                iconSize: 18 * _proportion,
                fontSize: 11 * _proportion,
              ),
            ),
            Expanded(
              child: TemplateButton(
                width: 50,
                height: 50,
                icon: CupertinoIcons.cart,
                text: "Cart",
                key: _btnCart,
                iconSize: 18 * _proportion,
                fontSize: 11 * _proportion,
                count: 2,
                onClick: () {
                  navigatorPushNamed(context, '/orders');
                },
              ),
            ),
            Expanded(
              child: TemplateButton(
                width: 50,
                height: 50,
                icon: CupertinoIcons.person,
                text: "Profile",
                iconSize: 18 * _proportion,
                fontSize: 11 * _proportion
              ),
            ),
            Expanded(
              child: TemplateButton(
                width: 50,
                height: 50,
                icon: CupertinoIcons.bars,
                text: "More",
                iconSize: 18 * _proportion,
                fontSize: 11 * _proportion,
              ),
            ),
          ],
        )
      ),
    );
  }

}