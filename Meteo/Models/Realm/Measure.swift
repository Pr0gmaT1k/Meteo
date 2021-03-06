/* DO NOT EDIT | Generated by gyro */

import RealmSwift
import Foundation

final class Measure: Object, Decodable {
  private enum Keys: String, CodingKey {
    case dt = "dt"
    case dt_txt = "dt_txt"
    case clouds = "clouds"
    case main = "main"
    case rain = "rain"
    case sys = "sys"
    case weather = "weather"
    case wind = "wind"

    }

  let dt = RealmOptional<Int64>()
  @objc dynamic var dt_txt: String?
  @objc dynamic var clouds: Cloud?
  @objc dynamic var main: Main?
  @objc dynamic var rain: Rain?
  @objc dynamic var sys: Sys?
  let weather = List<Weather>()
  @objc dynamic var wind: Wind?




  convenience required init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: Keys.self)
    let dt = try? container.decode(Int64?.self, forKey: .dt)
    let dt_txt = try? container.decode(String?.self, forKey: .dt_txt)
    let clouds = try? container.decode(Cloud?.self, forKey: .clouds)
    let main = try? container.decode(Main?.self, forKey: .main)
    let rain = try? container.decode(Rain?.self, forKey: .rain)
    let sys = try? container.decode(Sys?.self, forKey: .sys)
    let weather = try container.decode([Weather].self, forKey: .weather)
    let wind = try? container.decode(Wind?.self, forKey: .wind)
    self.init(dt: dt, dt_txt: dt_txt, clouds: clouds, main: main, rain: rain, sys: sys, weather: weather, wind: wind)
  }

  convenience init(dt: Int64?, dt_txt: String?, clouds: Cloud?, main: Main?, rain: Rain?, sys: Sys?, weather: [Weather], wind: Wind?) {
    self.init()
    self.dt.value = dt
    self.dt_txt = dt_txt
    self.clouds = clouds
    self.main = main
    self.rain = rain
    self.sys = sys
    self.weather.append(objectsIn: weather)
    self.wind = wind

  }
}
