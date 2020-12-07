import SwiftUI

struct UserProfileImage: View {
  
  let userPhoto: String
  let userName: String
  
  var body: some View {
    VStack {
      Image(userPhoto)
        .resizable()
        .scaledToFit()
        .clipShape(Circle())
        .overlay(Circle().stroke(Color.white, lineWidth: 4))
        .shadow(radius: 10)
      
      Text(userName)
        .font(.title)
    }
  }
}

struct UserProfileImage_Previews: PreviewProvider {
  static var previews: some View {
    UserProfileImage(userPhoto: "user_photo_ada", userName: "Ada")
  }
}
