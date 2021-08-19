import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';
import 'package:uber_clone/configs/providers/appDataProvider.dart';
import 'package:uber_clone/database/RideRequestMethods/saveRideRequests.dart';

class CancelRideRequest {
  static Future<void> cancelRideRequest(BuildContext context) async {
    await rideRequestRef
        .child(Provider.of<AppData>(context, listen: false).currentUserInfo.id!)
        .remove();
  }
}
