import SwiftUI

struct ThingRowView: View, Identifiable {
  var id: Int
  
  @State var thing: Thing
  
  var body: some View {
    GeometryReader { metrics in
      HStack {
        Image(uiImage: thing.image)
          .resizable()
          .scaledToFit()
//          .aspectRatio(contentMode: .fit)
          .clipShape(RoundedRectangle(cornerRadius: 12))
          .overlay(
            RoundedRectangle(cornerRadius: 12)
              .stroke(Color.black, lineWidth: 1)
          )
          .frame(
            maxWidth: (metrics.size.width / 6),
            maxHeight: (metrics.size.width / 6)
          )
        
        ZStack (alignment: .leading){
          RoundedRectangle(cornerRadius: 30, style: .continuous)
            .fill(Color.gray)
            .frame(maxHeight: (metrics.size.width / 6))
          
          Rectangle()
            .fill(Color.red)
            .clipShape(RoundedRectangle(cornerRadius: 30, style: .continuous))
            .frame(maxWidth: ((metrics.size.width / 6) * CGFloat(thing.remainingPercentage)), maxHeight: (metrics.size.width / 6))
          
          HStack {
            Spacer()
            
            Text(thing.timeLeft)
              .colorInvert()

            Spacer()
          }
        }
      }
      .frame(maxWidth: metrics.size.width, maxHeight: (metrics.size.width / 6))
    }
  }
}

struct ThingRowView_Previews: PreviewProvider {
  static var previews: some View {
    ThingRowView(id: 0, thing: Thing(id: "1", description: "Drill", imageAsset: "thing_photo_drill_machine", loanTimestamp: Date(timeIntervalSinceNow: -2000), planedReturnTimestamp: Date(timeIntervalSinceNow: TimeInterval(400))))
  }
}
