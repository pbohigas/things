import Foundation
import SwiftUI

struct BorrowedThing: Thing {  
  let id: String
  var description: String
  var imageAsset: String
  let loanTimestamp: Date
  var planedReturnTimestamp: Date
  
  var lender: User
  
  var image: UIImage {
    if let image = UIImage(named: imageAsset) {
      return image
    }
    // else return default borrowed thing image
    return UIImage(systemName: "shippingbox.fill")!
  }
  
  enum CodingKeys: String, CodingKey {
    case id = "thing_id"
    case description = "thing_description"
    case imageAsset = "image_asset"
    case loanTimestamp = "loan_timestamp"
    case planedReturnTimestamp = "planed_return_timestamp"
    case lender
  }
}
