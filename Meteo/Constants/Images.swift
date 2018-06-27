// Generated using SwiftGen, by O.Halligon — https://github.com/SwiftGen/SwiftGen

#if os(OSX)
  import AppKit.NSImage
  internal typealias AssetColorTypeAlias = NSColor
  internal typealias Image = NSImage
#elseif os(iOS) || os(tvOS) || os(watchOS)
  import UIKit.UIImage
  internal typealias AssetColorTypeAlias = UIColor
  internal typealias Image = UIImage
#endif

// swiftlint:disable superfluous_disable_command
// swiftlint:disable file_length

@available(*, deprecated, renamed: "ImageAsset")
internal typealias AssetType = ImageAsset

internal struct ImageAsset {
  internal fileprivate(set) var name: String

  internal var image: Image {
    let bundle = Bundle(for: BundleToken.self)
    #if os(iOS) || os(tvOS)
    let image = Image(named: name, in: bundle, compatibleWith: nil)
    #elseif os(OSX)
    let image = bundle.image(forResource: name)
    #elseif os(watchOS)
    let image = Image(named: name)
    #endif
    guard let result = image else { fatalError("Unable to load image named \(name).") }
    return result
  }
}

internal struct ColorAsset {
  internal fileprivate(set) var name: String

  #if swift(>=3.2)
  @available(iOS 11.0, tvOS 11.0, watchOS 4.0, OSX 10.13, *)
  internal var color: AssetColorTypeAlias {
    return AssetColorTypeAlias(asset: self)
  }
  #endif
}

// swiftlint:disable identifier_name line_length nesting type_body_length type_name
internal enum Asset {
  internal static let background = ImageAsset(name: "background")
  internal static let clock = ImageAsset(name: "clock")
  internal static let humidity = ImageAsset(name: "humidity")
  internal static let launchScreen = ImageAsset(name: "launchScreen")
  internal static let pressure = ImageAsset(name: "pressure")
  internal static let rain = ImageAsset(name: "rain")
  internal static let sun = ImageAsset(name: "sun")
  internal static let thermometer = ImageAsset(name: "thermometer")
  internal enum WeatherIcn {
    internal static let _01d = ImageAsset(name: "01d")
    internal static let _01n = ImageAsset(name: "01n")
    internal static let _02d = ImageAsset(name: "02d")
    internal static let _02n = ImageAsset(name: "02n")
    internal static let _03d = ImageAsset(name: "03d")
    internal static let _03n = ImageAsset(name: "03n")
    internal static let _04d = ImageAsset(name: "04d")
    internal static let _04n = ImageAsset(name: "04n")
    internal static let _09d = ImageAsset(name: "09d")
    internal static let _09n = ImageAsset(name: "09n")
    internal static let _10d = ImageAsset(name: "10d")
    internal static let _10n = ImageAsset(name: "10n")
    internal static let _11d = ImageAsset(name: "11d")
    internal static let _11n = ImageAsset(name: "11n")
    internal static let _13d = ImageAsset(name: "13d")
    internal static let _13n = ImageAsset(name: "13n")
    internal static let _50d = ImageAsset(name: "50d")
    internal static let _50n = ImageAsset(name: "50n")
  }

  // swiftlint:disable trailing_comma
  internal static let allColors: [ColorAsset] = [
  ]
  internal static let allImages: [ImageAsset] = [
    background,
    clock,
    humidity,
    launchScreen,
    pressure,
    rain,
    sun,
    thermometer,
    WeatherIcn._01d,
    WeatherIcn._01n,
    WeatherIcn._02d,
    WeatherIcn._02n,
    WeatherIcn._03d,
    WeatherIcn._03n,
    WeatherIcn._04d,
    WeatherIcn._04n,
    WeatherIcn._09d,
    WeatherIcn._09n,
    WeatherIcn._10d,
    WeatherIcn._10n,
    WeatherIcn._11d,
    WeatherIcn._11n,
    WeatherIcn._13d,
    WeatherIcn._13n,
    WeatherIcn._50d,
    WeatherIcn._50n,
  ]
  // swiftlint:enable trailing_comma
  @available(*, deprecated, renamed: "allImages")
  internal static let allValues: [AssetType] = allImages
}
// swiftlint:enable identifier_name line_length nesting type_body_length type_name

internal extension Image {
  @available(iOS 1.0, tvOS 1.0, watchOS 1.0, *)
  @available(OSX, deprecated,
    message: "This initializer is unsafe on macOS, please use the ImageAsset.image property")
  convenience init!(asset: ImageAsset) {
    #if os(iOS) || os(tvOS)
    let bundle = Bundle(for: BundleToken.self)
    self.init(named: asset.name, in: bundle, compatibleWith: nil)
    #elseif os(OSX) || os(watchOS)
    self.init(named: asset.name)
    #endif
  }
}

internal extension AssetColorTypeAlias {
  #if swift(>=3.2)
  @available(iOS 11.0, tvOS 11.0, watchOS 4.0, OSX 10.13, *)
  convenience init!(asset: ColorAsset) {
    let bundle = Bundle(for: BundleToken.self)
    #if os(iOS) || os(tvOS)
    self.init(named: asset.name, in: bundle, compatibleWith: nil)
    #elseif os(OSX)
    self.init(named: asset.name, bundle: bundle)
    #elseif os(watchOS)
    self.init(named: asset.name)
    #endif
  }
  #endif
}

private final class BundleToken {}
