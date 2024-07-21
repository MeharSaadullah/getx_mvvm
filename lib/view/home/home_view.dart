import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_mvvm/resources/components/general_exception_widget.dart';
import 'package:getx_mvvm/resources/components/internet_exceptions.dart';
import 'package:getx_mvvm/resources/routes/routes_name.dart';
import 'package:getx_mvvm/view_models/controller/home/home_view_model.dart';
import 'package:getx_mvvm/view_models/user_perfrence/user_prefrence_view_modal.dart';

import '../../data/response/status.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  final homeController = Get.put(HomeController());

  UserPrefrence userPreference = UserPrefrence();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    homeController.userListApi(); // here we call userlistapi
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        actions: [
          IconButton(
              onPressed: () {
                Get.toNamed(RoutesName.LogInView);
              },
              icon: Icon(Icons.logout))
        ],
        title: Text('HomeScreen'),
      ),
      body: Obx(() {
        switch (homeController.rxRequestStatus.value) {
          case Status.Loading:
            return const Center(child: CircularProgressIndicator());
          case Status.Error:
            if (homeController.error.value == 'No internet') {
              return InternetExceptions(onpress: () {
                homeController.refreshApi();
              });
            } else {
              return GeneralExceptionWidget(onPress: () {
                homeController.refreshApi();
              });
            }
          case Status.Complete:
            return ListView.builder(
                itemCount: homeController.userList.value.data!.length,
                itemBuilder: (context, index) {
                  return Card(
                    child: ListTile(
                      leading: CircleAvatar(
                        backgroundImage: NetworkImage(homeController
                            .userList.value.data![index].avatar
                            .toString()),
                      ),
                      title: Text(homeController
                          .userList.value.data![index].firstName
                          .toString()),
                      subtitle: Text(homeController
                          .userList.value.data![index].email
                          .toString()),
                    ),
                  );
                });
        }
      }),
    );

    ;
  }
}
