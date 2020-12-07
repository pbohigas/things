import Foundation
import SwiftUI

class Data {
  let usersNamesList = ["ada", "chris", "claudia", "jack", "jon", "monica"]
  var users: [User]
  
  init() {
    users = usersNamesList.compactMap { (userName: String) -> User? in
      guard let userImage = UIImage(named: "user_photo_\(userName)") else { return nil }
        return User(
          id: UUID(),
          name: userName,
          photo: userImage
          )
      }
    }
}

struct User {
  let id: UUID
  let name: String
  let photo: UIImage
}
