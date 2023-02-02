import WatchKit
import Foundation
import UserNotifications

class InterfaceController: WKInterfaceController {

    @IBAction func buttonPressed() {
        let content = UNMutableNotificationContent()
        content.title = "Apple Watch Notification"
        content.body = "Please continue here on your iPhone..."
        content.categoryIdentifier = "myCategory"
       
        let request = UNNotificationRequest(identifier: "myNotification", content: content, trigger: nil)
        UNUserNotificationCenter.current().add(request, withCompletionHandler: nil)
    }
}