import Foundation
import SwiftUI

struct User: Decodable {
  var id: String
  var name: String
  var imageAsset: String
  
  enum CodingKeys: String, CodingKey {
    case id = "user_id"
    case name = "user_name"
    case imageAsset = "user_image_asset"
  }
}

extension User {
  var image: UIImage {
    if let image = UIImage(named: imageAsset) {
      return image
    }
    // else return default borrowed thing image
    return UIImage(systemName: "shippingbox.fill")!
  }
}
