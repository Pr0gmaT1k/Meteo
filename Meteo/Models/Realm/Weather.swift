/* DO NOT EDIT | Generated by gyro */

import RealmSwift
import Foundation

final class Weather: Object, Decodable {
  private enum Keys: String, CodingKey {
    case id = "id"/* Primary Key */
    case descriptionn = "description"
    case icon = "icon"
    case main = "main"

    }

  let id = RealmOptional<Int64>() /* Primary Key */
  @objc dynamic var descriptionn: String?
  @objc dynamic var icon: String?
  @objc dynamic var main: String?

  override static func primaryKey() -> String? {
    return "id"
  }




  convenience required init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: Keys.self)
    let id = try? container.decode(Int64?.self, forKey: .id) /* Primary Key */
    let descriptionn = try? container.decode(String?.self, forKey: .descriptionn)
    let icon = try? container.decode(String?.self, forKey: .icon)
    let main = try? container.decode(String?.self, forKey: .main)
    self.init(id: id, descriptionn: descriptionn, icon: icon, main: main)
  }

  convenience init(id: Int64?, descriptionn: String?, icon: String?, main: String?) {
    self.init()
    self.id.value = id
    self.descriptionn = descriptionn
    self.icon = icon
    self.main = main

  }
}
