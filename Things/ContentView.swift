import SwiftUI

struct ContentView: View {
  //  let data = Provider.getData()!
  @State var borrowersThings: [(user: User, things: [Thing])]
  @State var lendersThings: [(user: User, things: [Thing])]
  
  var body: some View {
    
    TabView {
      ListUsersView(usersThings: borrowersThings)
        .tabItem {
          Image(systemName: "person.3.fill")
          Text("Others things")
        }
      
      ListUsersView(usersThings: lendersThings)
        .tabItem {
          Image(systemName: "person.fill")
          Text("My things")
        }
    }
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView(
      borrowersThings: [
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
        ),
        (
          user: User(id: "32asdf", name: "Jon", imageAsset: "user_photo_jon" ),
          things: [
            Thing(id: "1", description: "Drill", imageAsset: "thing_photo_drill_machine", loanTimestamp: Date(), planedReturnTimestamp: Date()),
            Thing(id: "1", description: "Drill", imageAsset: "thing_photo_drill_machine", loanTimestamp: Date(), planedReturnTimestamp: Date())
          ]
        )
      ],
      lendersThings: [
        (
          user: User(id: "64dsfa", name: "Claudia", imageAsset: "user_photo_claudia" ),
          things: [
            Thing(id: "1", description: "Drill", imageAsset: "thing_photo_drill_machine", loanTimestamp: Date(), planedReturnTimestamp: Date()),
            Thing(id: "1", description: "Drill", imageAsset: "thing_photo_drill_machine", loanTimestamp: Date(), planedReturnTimestamp: Date())
          ]
        ),
        (
          user: User(id: "3fdasd", name: "Jack", imageAsset: "user_photo_jack" ),
          things: [
            Thing(id: "1", description: "Drill", imageAsset: "thing_photo_drill_machine", loanTimestamp: Date(), planedReturnTimestamp: Date()),
            Thing(id: "1", description: "Drill", imageAsset: "thing_photo_drill_machine", loanTimestamp: Date(), planedReturnTimestamp: Date())
          ]
        ),
        (
          user: User(id: "3345d", name: "Monica", imageAsset: "user_photo_monica" ),
          things: [
            Thing(id: "1", description: "Drill", imageAsset: "thing_photo_drill_machine", loanTimestamp: Date(), planedReturnTimestamp: Date()),
            Thing(id: "1", description: "Drill", imageAsset: "thing_photo_drill_machine", loanTimestamp: Date(), planedReturnTimestamp: Date())
          ]
        )
      ]
    )
  }
}
