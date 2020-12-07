import SwiftUI

struct UserThingsView: View {
  var body: some View {
    GeometryReader { metrics in
      ZStack {
        RoundedRectangle(cornerRadius: 25.0, style: .continuous)
          .fill(Color.gray.opacity(15.0))
        
        VStack {
          HStack {
            UserProfileImage(userName: "ada", userPhoto: UIImage(named: "user_photo_ada")!)
              .frame(
                minWidth: 30,
                maxWidth: (0.3 * metrics.size.width),
                minHeight: 30,
                maxHeight: (0.3 * metrics.size.width),
                alignment: .leading
              )
            
            Spacer()
          }
          .padding()
          
          Spacer()
        }
        .padding()
      }
    }
  }
}

struct UserThingsView_Previews: PreviewProvider {
  static var previews: some View {
    UserThingsView()
  }
}
