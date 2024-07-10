import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:infohub/model/user_details_model.dart';

class InfoTableController extends GetxController {
  List<UserDetailsModel> profiles = [];
  final RxBool loading = RxBool(false);

  @override
  void onInit() {
    getUser();
    super.onInit();
  }

  Future<String?> getUser() async {
    try {
      loading(true);
      CollectionReference users =
          FirebaseFirestore.instance.collection('user_details');
      QuerySnapshot snapshot = await users.get();

      profiles = snapshot.docs.map((doc) {
        return UserDetailsModel.fromJson(doc.data() as Map<String, dynamic>);
      }).toList();
    } catch (e) {
      return 'Error fetching user';
    } finally {
      loading(false);
    }
  }
}
