import Foundation

struct ThingsResponse: Decodable {
  let others_things: [BorrowedThing]
  let my_things: [LendetThing]
}

class Provider {
  static func getData() -> ThingsResponse? {
    if let url = Bundle.main.url(forResource: "app_data", withExtension: "json") {
      do {
        let data = try Data(contentsOf: url)
        let decoder = JSONDecoder()
        decoder.dateDecodingStrategy = .iso8601
        
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
