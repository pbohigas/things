import SwiftUI

@main
struct ThingsApp: App {
  var body: some Scene {
    WindowGroup {
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
              Thing(id: "1", description: "Cream whipping machine", imageAsset: "thing_photo_cream_whipping_machine", loanTimestamp: Date(), planedReturnTimestamp: Date()),
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
}
