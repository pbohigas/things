import Foundation
import SwiftUI

struct Thing: Decodable {
  let id: String
  var description: String
  var imageAsset: String
  let loanTimestamp: Date
  var planedReturnTimestamp: Date

  var image: UIImage {
    if let image = UIImage(named: imageAsset) {
      return image
    }
    // else return default borrowed thing image
    return UIImage(systemName: "shippingbox.fill")!
  }
  
  var remainingPercentage: Double {
    let duration = planedReturnTimestamp.timeIntervalSince(loanTimestamp)
    let elapset = Date().timeIntervalSince(loanTimestamp)
    
    return (elapset / duration)
  }
  
  var timeLeft: String {
    let diffComponents = Calendar.current.dateComponents([.day, .hour, .minute], from: Date(), to: planedReturnTimestamp)
    if diffComponents.day != 0 {
      return "\(diffComponents.day ?? 0) days left"
    } else if diffComponents.hour != 0 {
      return "\(diffComponents.hour ?? 0) hours left"
    } else {
      return "\(diffComponents.minute ?? 0) minutes left"
    }
  }
}
