/* DO NOT EDIT | Generated by gyro */

import RealmSwift
import Foundation

final class CurrentWeather: Object {

  enum Attributes: String {
    case id = "id"
    case base = "base"
    case cod = "cod"
    case dt = "dt"
    case name = "name"
    case visibility = "visibility"
  }

  enum Relationships: String {
    case clouds = "clouds"
    case coord = "coord"
    case main = "main"
    case sys = "sys"
    case weather = "weather"
    case wind = "wind"
  }

  var id = RealmOptional<Int64>()
  dynamic var base: String?
  var cod = RealmOptional<Int64>()
  var dt = RealmOptional<Int64>()
  dynamic var name: String?
  var visibility = RealmOptional<Int64>()
  dynamic var clouds: Cloud?
  dynamic var coord: Coordinate?
  dynamic var main: Main?
  dynamic var sys: Sys?
  var weather = List<Weather>()
  dynamic var wind: Wind?

  override static func primaryKey() -> String? {
    return "id"
  }

}