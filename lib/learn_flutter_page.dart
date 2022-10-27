import 'package:flutter/material.dart';

class LearnFlutterPage extends StatefulWidget {
  const LearnFlutterPage({Key? key}) : super(key: key);

  @override
  _LearnFlutterPageState createState() => _LearnFlutterPageState();
}

class _LearnFlutterPageState extends State<LearnFlutterPage> {
  bool isSwitch = false;
  bool? isCheck = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Learn Flutter"),
        automaticallyImplyLeading: false, // This is the default way to go back
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop(); // This is the code way to go back
          },
          icon: const Icon(Icons.arrow_back_ios_new),
        ),
        actions: [
          IconButton(
              onPressed: () {
                debugPrint("AppBar Buttons");
              },
              icon: const Icon(Icons.info_outline))
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset('images/derek.png'),
            const SizedBox(
              height: 10,
            ),
            const Divider(
              color: Colors.green,
            ),
            Container(
              color: Colors.blueGrey,
              width: double.infinity,
              margin: const EdgeInsets.all(10.0),
              padding: const EdgeInsets.all(10.5),
              child: const Center(
                child: Text(
                  "This is a TextWidget",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: isSwitch ? Colors.blue : Colors.green,
              ),
              onPressed: () {
                debugPrint('Elevated Button');
              },
              child: const Text("Elevated Button"),
            ),
            OutlinedButton(
              onPressed: () {
                debugPrint('Outlined Button');
              },
              child: const Text("Outlined Button"),
            ),
            TextButton(
              onPressed: () {
                debugPrint('Text Button');
              },
              child: const Text("Text Button"),
            ),
            GestureDetector(
              behavior: HitTestBehavior
                  .opaque, // This is to make everywhere in a field clickable
              onTap: () {
                debugPrint("This is a Row");
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  Icon(
                    Icons.local_activity,
                    color: Colors.blue,
                  ),
                  Text("Row Widgt"),
                  Icon(Icons.label_sharp),
                ],
              ),
            ),
            Switch(
              value: isSwitch,
              onChanged: (bool newBool) {
                setState(() {
                  isSwitch = newBool;
                });
              },
            ),
            Checkbox(
              value: isCheck,
              onChanged: (bool? newBool) {
                setState(() {
                  isCheck = newBool;
                });
              },
            ),
            Switch(
              value: isSwitch,
              onChanged: (bool newBool) {
                setState(() {
                  isSwitch = newBool;
                });
              },
            ),
            Image.network(
                "data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAASwAAACoCAMAAABt9SM9AAAAclBMVEXw9v9G0f1I0v0gvP0IWZ34+P/r9f8KW546z/3v9v/5+P+o5P4GWJw2zv33+f/4/P8ATJe/6v4AuP0AT5i26P7H7P7D1Oic2/6x5/562v1my/0ivf05yv0ftvilvdkASJVZx/1Lzv8RYqQOUZcAPI63yuJVdLcnAAACTUlEQVR4nO3b21KrMABG4XLIptJA0eq2alF32b7/Kxoop0ACuQszXd+MV95k1vxh2lp3OwAAAAAAAAAAAAAAAAAAAAAAAAAAAACwEn8MfB9qo8Rztm9lvUffp9om1SqYyl6E72NtEq3c0codrdzRyh2t3InnPa0c0cqdahXSyk3dahore8l9H2uTmlaTWHtaGd1ahbRyYGrFHTRrW4Xsah2t3HWtQlqtSs+0csWu3IluVyGt1qSGVrxmMDPtKnvk/aCJ8Q7SyohduTO9ZqCVmaCVs66V9h6HVka3O6h9zMCuLFSrYGq0KzHj87CeibPhb159K3GYO3s9r0+mVsOuxFs2E9zvV44Oi7t6039bf/UovN9Whlh7a6vgzlvt0mmtYVc5raaEXotdLdK2RasVo1oLrQJaNfqXD0Or/P1CK7O21rhVFF1oZdbcRK3Vx4dWi1Yj6TnLtFZRNN4WrTTioN3BmwutVgytulq0ssnfnyK9Fq1s9FZ1LVrZTFtFT5eAVmb596SVqvXvwfepNip/ncUqr3+Pvo+1UWJW6ypP1LKYbKu8yiQpqGWh1SoT1YpadulQq0wq2dTiJtr0z61SqlZSxkkSsy2b9iaW1amqqmZZSfxFLYumVlkVXSpFsi0b9dwqi1MVd6mSOKaWVf5a9KNqWlFrwfGz0FLVtXhu2ahasdaKbS1otxUPJLWs6m3FWivJTbQ6fn7pqai1QNWSWipqLVC1To2i/rn5/8O/qJjlD3N8ygwAAAAAAAAAAAAAAAAAAAAAAAAAAADct1/ahiwKJk3GhwAAAABJRU5ErkJggg==")
          ],
        ),
      ),
    );
  }
}
