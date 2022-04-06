import 'package:flutter/material.dart';
import 'package:transaction_plus/global/global.dart';
import 'package:transaction_plus/model/user.dart';
import 'package:transaction_plus/utils/screen.dart';
import 'package:transaction_plus/widget/common/button.dart';
import 'package:transaction_plus/widget/management/widget/common_form.dart';

class PositionPage extends StatefulWidget {
  @override
  _PositionState createState() => _PositionState();
}

class _PositionState extends State<PositionPage> {
  List<User> users = [];

  @override
  Widget build(BuildContext context) {
    return RepaintBoundary(
      child: Container(
        color: Color(0xff000000),
        alignment: Alignment.centerLeft,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: CommonForm<User>(
                  columns: [
                    FormColumn<User>(
                      title: Text('合约', style: TextStyle(color: Color(0xBFffffff)),),
                      builder: (_, v) => Container(
                        child: Text('${v.username.hashCode ?? ''}'),
                      ),
                    ),
                    FormColumn<User>(
                      title: Text('合约名', style: TextStyle(color: Color(0xBFffffff)),),
                      builder: (_, v) => Container(
                        child: Text('${v.username ?? ''}'),
                      ),
                    ),
                    FormColumn<User>(
                      title: Text('最新价', style: TextStyle(color: Color(0xBFffffff)),),
                      builder: (_, v) => Container(
                        child: Text('${v.password ?? ''}'),
                      ),
                    ),
                    FormColumn<User>(
                      title: Text('涨跌', style: TextStyle(color: Color(0xBFffffff)),),
                      builder: (_, v) => Container(
                        child: Text('${v.password ?? ''}'),
                      ),
                    ),
                    FormColumn<User>(
                      title: Text('买价', style: TextStyle(color: Color(0xBFffffff)),),
                      builder: (_, v) => Container(
                        child: Text('${v.password ?? ''}'),
                      ),
                    ),
                    FormColumn<User>(
                      title: Text('买量', style: TextStyle(color: Color(0xBFffffff)),),
                      builder: (_, v) => Container(
                        child: Text('${v.password ?? ''}'),
                      ),
                    ),
                    FormColumn<User>(
                      title: Text('成交量', style: TextStyle(color: Color(0xBFffffff)),),
                      builder: (_, v) => Container(
                        child: Text('${v.password ?? ''}'),
                      ),
                    ),
                    FormColumn<User>(
                      title: Text('持仓量', style: TextStyle(color: Color(0xBFffffff)),),
                      builder: (_, v) => Container(
                        child: Text('${v.password ?? ''}'),
                      ),
                    ),
                    FormColumn<User>(
                      title: Text('涨停价', style: TextStyle(color: Color(0xBFffffff)),),
                      builder: (_, v) => Container(
                        child: Text('${v.password ?? ''}'),
                      ),
                    ),
                    FormColumn<User>(
                      title: Text('跌停价', style: TextStyle(color: Color(0xBFffffff)),),
                      builder: (_, v) => Container(
                        child: Text('${v.password ?? ''}'),
                      ),
                    ),
                    FormColumn<User>(
                      title: Text('今开盘', style: TextStyle(color: Color(0xBFffffff)),),
                      builder: (_, v) => Container(
                        child: Text('${v.password ?? ''}'),
                      ),
                    ),
                    FormColumn<User>(
                      title: Text('昨结算', style: TextStyle(color: Color(0xBFffffff)),),
                      builder: (_, v) => Container(
                        child: Text('${v.password ?? ''}'),
                      ),
                    ),
                  ],
                  values: users,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
