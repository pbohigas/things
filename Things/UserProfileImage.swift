import SwiftUI

struct UserProfileImage: View {
  
  let userName: String
  let userPhoto: UIImage
  
  var body: some View {
    VStack {
      Image(uiImage: userPhoto)
        .resizable()
        .scaledToFit()
        .clipShape(Circle())
        .overlay(Circle().stroke(Color.black, lineWidth: 1))
        .shadow(radius: 42)
      
      Text(userName)
        .font(.title)
    }
  }
}

struct UserProfileImage_Previews: PreviewProvider {
  static var previews: some View {
    UserProfileImage(userName: "Ada", userPhoto: UIImage(named: "user_photo_ada")!)
  }
}
