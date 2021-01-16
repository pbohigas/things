import Foundation

struct ThingsResponse: Decodable {
  struct borrowerThings: Decodable {
    let borrower: User
    let things: [Thing]
  }
  struct lenderThings: Decodable {
    let lender: User
    let things: [Thing]
  }
  
  let othersThings: [borrowerThings]
  let myThings: [lenderThings]
  
  enum CodingKeys: String, CodingKey {
    case othersThings = "others_things"
    case myThings = "my_things"
  }
}

class Provider {
  static func getData() -> ThingsResponse? {
    if let url = Bundle.main.url(forResource: "app_data", withExtension: "json") {
      do {
        let data = try Data(contentsOf: url)
        let decoder = JSONDecoder()
        decoder.dateDecodingStrategy = .iso8601
//        decoder.keyDecodingStrategy = .convertFromSnakeCase
        
        let jsonData = try decoder.decode(ThingsResponse.self, from: data)
        print(jsonData)
        return jsonData
      } catch {
        print("error:\(error)")
      }
    }
    return nil
  }
}
