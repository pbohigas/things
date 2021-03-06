import SwiftUI

struct UserImage: View {
  @State var user: User
  
  var body: some View {
    GeometryReader { metrics in
      HStack {
        Image(uiImage: user.image)
          .resizable()
          .scaledToFit()
          .clipShape(Circle())
          .overlay(Circle().stroke(Color.black, lineWidth: 1))
          .shadow(radius: 42)
          .frame(maxWidth: (0.3 * metrics.size.width))
        
        Spacer()
          .frame(width: 30)
        
        Text(user.name)
          .font(.title)
        
        Spacer()
      }
      .frame(
        maxWidth: metrics.size.width,
        maxHeight: (0.3 * metrics.size.width)
      )
    }
  }
}

struct UserImage_Previews: PreviewProvider {
  static var previews: some View {
    UserImage(user: User(id: "64565", name: "Ada", imageAsset: "user_photo_ada" ))
  }
}
