import Foundation
import SwiftUI

protocol Thing: Decodable {
  var id: String { get }
  var description: String { get set }
  var imageAsset: String { get set }
  var loanTimestamp: Date { get }
  var planedReturnTimestamp: Date { get set }
}
