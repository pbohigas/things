import SwiftUI

struct ListUsersView: View {
  @State var usersThings: [(user: User, things: [Thing])]
  
  var body: some View {
    
    List(usersThings, id: \.user.id) { userThings in
      Section {
        UserThingsView(user: userThings.user, things: userThings.things)
      }
    }
  }
}

struct ListUsersView_Previews: PreviewProvider {
  static var previews: some View {
    ListUsersView(
      usersThings: [
        (
          user: User(id: "64565", name: "Ada", imageAsset: "user_photo_ada" ),
          things: [
            Thing(id: "1", description: "Drill", imageAsset: "thing_photo_drill_machine", loanTimestamp: Date(), planedReturnTimestamp: Date()),
            Thing(id: "1", description: "Drill", imageAsset: "thing_photo_drill_machine", loanTimestamp: Date(), planedReturnTimestamp: Date())
          ]
        ),
        (
          user: User(id: "3242", name: "Chris", imageAsset: "user_photo_chris" ),
          things: [
            Thing(id: "1", description: "Drill", imageAsset: "thing_photo_drill_machine", loanTimestamp: Date(), planedReturnTimestamp: Date()),
            Thing(id: "1", description: "Drill", imageAsset: "thing_photo_drill_machine", loanTimestamp: Date(), planedReturnTimestamp: Date())
          ]
        )
      ]
    )
  }
}
