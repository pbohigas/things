import SwiftUI

struct UserThingsView: View {
  @State var user: User
  @State var things: [Thing]
  
  var body: some View {
    
    VStack {
      UserImage(user: user)
        .frame(height: 81)
      
      ForEach(things, id: \.id) {
        ThingRowView(id: 1, thing: $0)
          .frame(height: 60)
      }
//      List(things, id: \.id) { thing in
//        Section {
//          ThingRowView(id: 1, thing: thing)
//        }
//      }
//      .scaledToFit()
//      .listRowBackground(Color.red)
//      .environment(\.defaultMinListRowHeight, 68)
//      .background(Color.red)
//      .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
      
      //https://swiftui-lab.com/frame-behaviors/
      
    }
    .padding()
    .background(
      RoundedRectangle(cornerRadius: 25.0, style: .continuous)
        .fill(Color.green)
    )
  }
}

struct UserThingsView_Previews: PreviewProvider {
  static let data = Provider.getData()!

  static var previews: some View {
    UserThingsView(
      user: User(id: "64565", name: "Ada", imageAsset: "user_photo_ada" ),
      things: [
        Thing(id: "1", description: "Drill", imageAsset: "thing_photo_drill_machine", loanTimestamp: Date(), planedReturnTimestamp: Date()),
        Thing(id: "2", description: "Cream whipping machine", imageAsset: "thing_photo_cream_whipping_machine", loanTimestamp: Date(), planedReturnTimestamp: Date())
      ]
    )
  }
}
