import 'package:favorcate/ui/pages/fliter/fliter.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:favorcate/core/extension/int_extension.dart';
class SLHomeDrawer extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      width: 250.px,
      child: Drawer(
        child: Column(
          children: <Widget>[
            buildHeaderView(context),
            buildListTile(context, Icon(Icons.restaurant), "进餐", (){
              Navigator.of(context).pop();
            }),
            buildListTile(context, Icon(Icons.settings), "过滤", (){
              Navigator.of(context).pushNamed(SLFliterScreen.routeName);
            }),

          ],
        ),
      ),
    );
  }

  Widget buildHeaderView(BuildContext context){
    return Container(
      width: double.infinity,
      height: 120.px,
      color: Colors.orange,
      margin: EdgeInsets.only(bottom: 20.px),
      alignment: Alignment(0,0.5),
      child: Text("开始动手",style: Theme.of(context).textTheme.display4,),
    );
  }

  Widget buildListTile(BuildContext context,Widget icon,String title,Function handler){
    return ListTile(
      leading: icon,
      title: Text(title,style: Theme.of(context).textTheme.display2,),
      onTap: handler,
    );
  }
}