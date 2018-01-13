// Generated using SwiftGen, by O.Halligon — https://github.com/SwiftGen/SwiftGen

#if os(OSX)
  import AppKit.NSImage
  typealias AssetColorTypeAlias = NSColor
  typealias Image = NSImage
#elseif os(iOS) || os(tvOS) || os(watchOS)
  import UIKit.UIImage
  typealias AssetColorTypeAlias = UIColor
  typealias Image = UIImage
#endif

// swiftlint:disable superfluous_disable_command
// swiftlint:disable file_length

@available(*, deprecated, renamed: "ImageAsset")
typealias AssetType = ImageAsset

struct ImageAsset {
  fileprivate var name: String

  var image: Image {
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

struct ColorAsset {
  fileprivate var name: String

  #if swift(>=3.2)
  @available(iOS 11.0, tvOS 11.0, watchOS 4.0, OSX 10.13, *)
  var color: AssetColorTypeAlias {
    return AssetColorTypeAlias(asset: self)
  }
  #endif
}

// swiftlint:disable identifier_name line_length nesting type_body_length type_name
enum Asset {
  static let background = ImageAsset(name: "background")
  enum Svg {
    static let wiAlienSvg = ImageAsset(name: "wi-alien.svg")
    static let wiBarometerSvg = ImageAsset(name: "wi-barometer.svg")
    static let wiCelsiusSvg = ImageAsset(name: "wi-celsius.svg")
    static let wiCloudDownSvg = ImageAsset(name: "wi-cloud-down.svg")
    static let wiCloudRefreshSvg = ImageAsset(name: "wi-cloud-refresh.svg")
    static let wiCloudUpSvg = ImageAsset(name: "wi-cloud-up.svg")
    static let wiCloudSvg = ImageAsset(name: "wi-cloud.svg")
    static let wiCloudyGustsSvg = ImageAsset(name: "wi-cloudy-gusts.svg")
    static let wiCloudyWindySvg = ImageAsset(name: "wi-cloudy-windy.svg")
    static let wiCloudySvg = ImageAsset(name: "wi-cloudy.svg")
    static let wiDayCloudyGustsSvg = ImageAsset(name: "wi-day-cloudy-gusts.svg")
    static let wiDayCloudyHighSvg = ImageAsset(name: "wi-day-cloudy-high.svg")
    static let wiDayCloudyWindySvg = ImageAsset(name: "wi-day-cloudy-windy.svg")
    static let wiDayCloudySvg = ImageAsset(name: "wi-day-cloudy.svg")
    static let wiDayFogSvg = ImageAsset(name: "wi-day-fog.svg")
    static let wiDayHailSvg = ImageAsset(name: "wi-day-hail.svg")
    static let wiDayHazeSvg = ImageAsset(name: "wi-day-haze.svg")
    static let wiDayLightWindSvg = ImageAsset(name: "wi-day-light-wind.svg")
    static let wiDayLightningSvg = ImageAsset(name: "wi-day-lightning.svg")
    static let wiDayRainMixSvg = ImageAsset(name: "wi-day-rain-mix.svg")
    static let wiDayRainWindSvg = ImageAsset(name: "wi-day-rain-wind.svg")
    static let wiDayRainSvg = ImageAsset(name: "wi-day-rain.svg")
    static let wiDayShowersSvg = ImageAsset(name: "wi-day-showers.svg")
    static let wiDaySleetStormSvg = ImageAsset(name: "wi-day-sleet-storm.svg")
    static let wiDaySleetSvg = ImageAsset(name: "wi-day-sleet.svg")
    static let wiDaySnowThunderstormSvg = ImageAsset(name: "wi-day-snow-thunderstorm.svg")
    static let wiDaySnowWindSvg = ImageAsset(name: "wi-day-snow-wind.svg")
    static let wiDaySnowSvg = ImageAsset(name: "wi-day-snow.svg")
    static let wiDaySprinkleSvg = ImageAsset(name: "wi-day-sprinkle.svg")
    static let wiDayStormShowersSvg = ImageAsset(name: "wi-day-storm-showers.svg")
    static let wiDaySunnyOvercastSvg = ImageAsset(name: "wi-day-sunny-overcast.svg")
    static let wiDaySunnySvg = ImageAsset(name: "wi-day-sunny.svg")
    static let wiDayThunderstormSvg = ImageAsset(name: "wi-day-thunderstorm.svg")
    static let wiDayWindySvg = ImageAsset(name: "wi-day-windy.svg")
    static let wiDegreesSvg = ImageAsset(name: "wi-degrees.svg")
    static let wiDirectionDownLeftSvg = ImageAsset(name: "wi-direction-down-left.svg")
    static let wiDirectionDownRightSvg = ImageAsset(name: "wi-direction-down-right.svg")
    static let wiDirectionDownSvg = ImageAsset(name: "wi-direction-down.svg")
    static let wiDirectionLeftSvg = ImageAsset(name: "wi-direction-left.svg")
    static let wiDirectionRightSvg = ImageAsset(name: "wi-direction-right.svg")
    static let wiDirectionUpLeftSvg = ImageAsset(name: "wi-direction-up-left.svg")
    static let wiDirectionUpRightSvg = ImageAsset(name: "wi-direction-up-right.svg")
    static let wiDirectionUpSvg = ImageAsset(name: "wi-direction-up.svg")
    static let wiDustSvg = ImageAsset(name: "wi-dust.svg")
    static let wiEarthquakeSvg = ImageAsset(name: "wi-earthquake.svg")
    static let wiFahrenheitSvg = ImageAsset(name: "wi-fahrenheit.svg")
    static let wiFireSvg = ImageAsset(name: "wi-fire.svg")
    static let wiFloodSvg = ImageAsset(name: "wi-flood.svg")
    static let wiFogSvg = ImageAsset(name: "wi-fog.svg")
    static let wiGaleWarningSvg = ImageAsset(name: "wi-gale-warning.svg")
    static let wiHailSvg = ImageAsset(name: "wi-hail.svg")
    static let wiHorizonAltSvg = ImageAsset(name: "wi-horizon-alt.svg")
    static let wiHorizonSvg = ImageAsset(name: "wi-horizon.svg")
    static let wiHotSvg = ImageAsset(name: "wi-hot.svg")
    static let wiHumiditySvg = ImageAsset(name: "wi-humidity.svg")
    static let wiHurricaneWarningSvg = ImageAsset(name: "wi-hurricane-warning.svg")
    static let wiHurricaneSvg = ImageAsset(name: "wi-hurricane.svg")
    static let wiLightningSvg = ImageAsset(name: "wi-lightning.svg")
    static let wiLunarEclipseSvg = ImageAsset(name: "wi-lunar-eclipse.svg")
    static let wiMeteorSvg = ImageAsset(name: "wi-meteor.svg")
    static let wiMoonAltFirstQuarterSvg = ImageAsset(name: "wi-moon-alt-first-quarter.svg")
    static let wiMoonAltFullSvg = ImageAsset(name: "wi-moon-alt-full.svg")
    static let wiMoonAltNewSvg = ImageAsset(name: "wi-moon-alt-new.svg")
    static let wiMoonAltThirdQuarterSvg = ImageAsset(name: "wi-moon-alt-third-quarter.svg")
    static let wiMoonAltWaningCrescent1Svg = ImageAsset(name: "wi-moon-alt-waning-crescent-1.svg")
    static let wiMoonAltWaningCrescent2Svg = ImageAsset(name: "wi-moon-alt-waning-crescent-2.svg")
    static let wiMoonAltWaningCrescent3Svg = ImageAsset(name: "wi-moon-alt-waning-crescent-3.svg")
    static let wiMoonAltWaningCrescent4Svg = ImageAsset(name: "wi-moon-alt-waning-crescent-4.svg")
    static let wiMoonAltWaningCrescent5Svg = ImageAsset(name: "wi-moon-alt-waning-crescent-5.svg")
    static let wiMoonAltWaningCrescent6Svg = ImageAsset(name: "wi-moon-alt-waning-crescent-6.svg")
    static let wiMoonAltWaningGibbous1Svg = ImageAsset(name: "wi-moon-alt-waning-gibbous-1.svg")
    static let wiMoonAltWaningGibbous2Svg = ImageAsset(name: "wi-moon-alt-waning-gibbous-2.svg")
    static let wiMoonAltWaningGibbous3Svg = ImageAsset(name: "wi-moon-alt-waning-gibbous-3.svg")
    static let wiMoonAltWaningGibbous4Svg = ImageAsset(name: "wi-moon-alt-waning-gibbous-4.svg")
    static let wiMoonAltWaningGibbous5Svg = ImageAsset(name: "wi-moon-alt-waning-gibbous-5.svg")
    static let wiMoonAltWaningGibbous6Svg = ImageAsset(name: "wi-moon-alt-waning-gibbous-6.svg")
    static let wiMoonAltWaxingCrescent1Svg = ImageAsset(name: "wi-moon-alt-waxing-crescent-1.svg")
    static let wiMoonAltWaxingCrescent2Svg = ImageAsset(name: "wi-moon-alt-waxing-crescent-2.svg")
    static let wiMoonAltWaxingCrescent3Svg = ImageAsset(name: "wi-moon-alt-waxing-crescent-3.svg")
    static let wiMoonAltWaxingCrescent4Svg = ImageAsset(name: "wi-moon-alt-waxing-crescent-4.svg")
    static let wiMoonAltWaxingCrescent5Svg = ImageAsset(name: "wi-moon-alt-waxing-crescent-5.svg")
    static let wiMoonAltWaxingGibbous1Svg = ImageAsset(name: "wi-moon-alt-waxing-gibbous-1.svg")
    static let wiMoonAltWaxingGibbous2Svg = ImageAsset(name: "wi-moon-alt-waxing-gibbous-2.svg")
    static let wiMoonAltWaxingGibbous3Svg = ImageAsset(name: "wi-moon-alt-waxing-gibbous-3.svg")
    static let wiMoonAltWaxingGibbous4Svg = ImageAsset(name: "wi-moon-alt-waxing-gibbous-4.svg")
    static let wiMoonAltWaxingGibbous5Svg = ImageAsset(name: "wi-moon-alt-waxing-gibbous-5.svg")
    static let wiMoonFirstQuarterSvg = ImageAsset(name: "wi-moon-first-quarter.svg")
    static let wiMoonFullSvg = ImageAsset(name: "wi-moon-full.svg")
    static let wiMoonNewSvg = ImageAsset(name: "wi-moon-new.svg")
    static let wiMoonThirdQuarterSvg = ImageAsset(name: "wi-moon-third-quarter.svg")
    static let wiMoonWaningCrescent1Svg = ImageAsset(name: "wi-moon-waning-crescent-1.svg")
    static let wiMoonWaningCrescent2Svg = ImageAsset(name: "wi-moon-waning-crescent-2.svg")
    static let wiMoonWaningCrescent3Svg = ImageAsset(name: "wi-moon-waning-crescent-3.svg")
    static let wiMoonWaningCrescent5Svg = ImageAsset(name: "wi-moon-waning-crescent-5.svg")
    static let wiMoonWaningCrescent6Svg = ImageAsset(name: "wi-moon-waning-crescent-6.svg")
    static let wiMoonWaningGibbous1Svg = ImageAsset(name: "wi-moon-waning-gibbous-1.svg")
    static let wiMoonWaningGibbous2Svg = ImageAsset(name: "wi-moon-waning-gibbous-2.svg")
    static let wiMoonWaningGibbous3Svg = ImageAsset(name: "wi-moon-waning-gibbous-3.svg")
    static let wiMoonWaningGibbous4Svg = ImageAsset(name: "wi-moon-waning-gibbous-4.svg")
    static let wiMoonWaningGibbous6Svg = ImageAsset(name: "wi-moon-waning-gibbous-6.svg")
    static let wiMoonWaxingCrescent1Svg = ImageAsset(name: "wi-moon-waxing-crescent-1.svg")
    static let wiMoonWaxingCrescent2Svg = ImageAsset(name: "wi-moon-waxing-crescent-2.svg")
    static let wiMoonWaxingCrescent3Svg = ImageAsset(name: "wi-moon-waxing-crescent-3.svg")
    static let wiMoonWaxingCrescent4Svg = ImageAsset(name: "wi-moon-waxing-crescent-4.svg")
    static let wiMoonWaxingCrescent5Svg = ImageAsset(name: "wi-moon-waxing-crescent-5.svg")
    static let wiMoonWaxingGibbous1Svg = ImageAsset(name: "wi-moon-waxing-gibbous-1.svg")
    static let wiMoonWaxingGibbous2Svg = ImageAsset(name: "wi-moon-waxing-gibbous-2.svg")
    static let wiMoonWaxingGibbous3Svg = ImageAsset(name: "wi-moon-waxing-gibbous-3.svg")
    static let wiMoonWaxingGibbous5Svg = ImageAsset(name: "wi-moon-waxing-gibbous-5.svg")
    static let wiMoonWaxingGibbous6Svg = ImageAsset(name: "wi-moon-waxing-gibbous-6.svg")
    static let wiMoonriseSvg = ImageAsset(name: "wi-moonrise.svg")
    static let wiMoonsetSvg = ImageAsset(name: "wi-moonset.svg")
    static let wiNaSvg = ImageAsset(name: "wi-na.svg")
    static let wiNightAltCloudyGustsSvg = ImageAsset(name: "wi-night-alt-cloudy-gusts.svg")
    static let wiNightAltCloudyHighSvg = ImageAsset(name: "wi-night-alt-cloudy-high.svg")
    static let wiNightAltCloudyWindySvg = ImageAsset(name: "wi-night-alt-cloudy-windy.svg")
    static let wiNightAltCloudySvg = ImageAsset(name: "wi-night-alt-cloudy.svg")
    static let wiNightAltHailSvg = ImageAsset(name: "wi-night-alt-hail.svg")
    static let wiNightAltLightningSvg = ImageAsset(name: "wi-night-alt-lightning.svg")
    static let wiNightAltPartlyCloudySvg = ImageAsset(name: "wi-night-alt-partly-cloudy.svg")
    static let wiNightAltRainMixSvg = ImageAsset(name: "wi-night-alt-rain-mix.svg")
    static let wiNightAltRainWindSvg = ImageAsset(name: "wi-night-alt-rain-wind.svg")
    static let wiNightAltRainSvg = ImageAsset(name: "wi-night-alt-rain.svg")
    static let wiNightAltShowersSvg = ImageAsset(name: "wi-night-alt-showers.svg")
    static let wiNightAltSleetStormSvg = ImageAsset(name: "wi-night-alt-sleet-storm.svg")
    static let wiNightAltSleetSvg = ImageAsset(name: "wi-night-alt-sleet.svg")
    static let wiNightAltSnowThunderstormSvg = ImageAsset(name: "wi-night-alt-snow-thunderstorm.svg")
    static let wiNightAltSnowWindSvg = ImageAsset(name: "wi-night-alt-snow-wind.svg")
    static let wiNightAltSnowSvg = ImageAsset(name: "wi-night-alt-snow.svg")
    static let wiNightAltSprinkleSvg = ImageAsset(name: "wi-night-alt-sprinkle.svg")
    static let wiNightAltStormShowersSvg = ImageAsset(name: "wi-night-alt-storm-showers.svg")
    static let wiNightAltThunderstormSvg = ImageAsset(name: "wi-night-alt-thunderstorm.svg")
    static let wiNightClearSvg = ImageAsset(name: "wi-night-clear.svg")
    static let wiNightCloudyGustsSvg = ImageAsset(name: "wi-night-cloudy-gusts.svg")
    static let wiNightCloudyHighSvg = ImageAsset(name: "wi-night-cloudy-high.svg")
    static let wiNightCloudyWindySvg = ImageAsset(name: "wi-night-cloudy-windy.svg")
    static let wiNightCloudySvg = ImageAsset(name: "wi-night-cloudy.svg")
    static let wiNightFogSvg = ImageAsset(name: "wi-night-fog.svg")
    static let wiNightHailSvg = ImageAsset(name: "wi-night-hail.svg")
    static let wiNightLightningSvg = ImageAsset(name: "wi-night-lightning.svg")
    static let wiNightPartlyCloudySvg = ImageAsset(name: "wi-night-partly-cloudy.svg")
    static let wiNightRainMixSvg = ImageAsset(name: "wi-night-rain-mix.svg")
    static let wiNightRainWindSvg = ImageAsset(name: "wi-night-rain-wind.svg")
    static let wiNightRainSvg = ImageAsset(name: "wi-night-rain.svg")
    static let wiNightShowersSvg = ImageAsset(name: "wi-night-showers.svg")
    static let wiNightSleetStormSvg = ImageAsset(name: "wi-night-sleet-storm.svg")
    static let wiNightSleetSvg = ImageAsset(name: "wi-night-sleet.svg")
    static let wiNightSnowThunderstormSvg = ImageAsset(name: "wi-night-snow-thunderstorm.svg")
    static let wiNightSnowWindSvg = ImageAsset(name: "wi-night-snow-wind.svg")
    static let wiNightSnowSvg = ImageAsset(name: "wi-night-snow.svg")
    static let wiNightSprinkleSvg = ImageAsset(name: "wi-night-sprinkle.svg")
    static let wiNightStormShowersSvg = ImageAsset(name: "wi-night-storm-showers.svg")
    static let wiNightThunderstormSvg = ImageAsset(name: "wi-night-thunderstorm.svg")
    static let wiRainMixSvg = ImageAsset(name: "wi-rain-mix.svg")
    static let wiRainWindSvg = ImageAsset(name: "wi-rain-wind.svg")
    static let wiRainSvg = ImageAsset(name: "wi-rain.svg")
    static let wiRaindropSvg = ImageAsset(name: "wi-raindrop.svg")
    static let wiRaindropsSvg = ImageAsset(name: "wi-raindrops.svg")
    static let wiRefreshAltSvg = ImageAsset(name: "wi-refresh-alt.svg")
    static let wiRefreshSvg = ImageAsset(name: "wi-refresh.svg")
    static let wiSandstormSvg = ImageAsset(name: "wi-sandstorm.svg")
    static let wiShowersSvg = ImageAsset(name: "wi-showers.svg")
    static let wiSleetSvg = ImageAsset(name: "wi-sleet.svg")
    static let wiSmallCraftAdvisorySvg = ImageAsset(name: "wi-small-craft-advisory.svg")
    static let wiSmogSvg = ImageAsset(name: "wi-smog.svg")
    static let wiSmokeSvg = ImageAsset(name: "wi-smoke.svg")
    static let wiSnowWindSvg = ImageAsset(name: "wi-snow-wind.svg")
    static let wiSnowSvg = ImageAsset(name: "wi-snow.svg")
    static let wiSnowflakeColdSvg = ImageAsset(name: "wi-snowflake-cold.svg")
  }

  // swiftlint:disable trailing_comma
  static let allColors: [ColorAsset] = [
  ]
  static let allImages: [ImageAsset] = [
    background,
    Svg.wiAlienSvg,
    Svg.wiBarometerSvg,
    Svg.wiCelsiusSvg,
    Svg.wiCloudDownSvg,
    Svg.wiCloudRefreshSvg,
    Svg.wiCloudUpSvg,
    Svg.wiCloudSvg,
    Svg.wiCloudyGustsSvg,
    Svg.wiCloudyWindySvg,
    Svg.wiCloudySvg,
    Svg.wiDayCloudyGustsSvg,
    Svg.wiDayCloudyHighSvg,
    Svg.wiDayCloudyWindySvg,
    Svg.wiDayCloudySvg,
    Svg.wiDayFogSvg,
    Svg.wiDayHailSvg,
    Svg.wiDayHazeSvg,
    Svg.wiDayLightWindSvg,
    Svg.wiDayLightningSvg,
    Svg.wiDayRainMixSvg,
    Svg.wiDayRainWindSvg,
    Svg.wiDayRainSvg,
    Svg.wiDayShowersSvg,
    Svg.wiDaySleetStormSvg,
    Svg.wiDaySleetSvg,
    Svg.wiDaySnowThunderstormSvg,
    Svg.wiDaySnowWindSvg,
    Svg.wiDaySnowSvg,
    Svg.wiDaySprinkleSvg,
    Svg.wiDayStormShowersSvg,
    Svg.wiDaySunnyOvercastSvg,
    Svg.wiDaySunnySvg,
    Svg.wiDayThunderstormSvg,
    Svg.wiDayWindySvg,
    Svg.wiDegreesSvg,
    Svg.wiDirectionDownLeftSvg,
    Svg.wiDirectionDownRightSvg,
    Svg.wiDirectionDownSvg,
    Svg.wiDirectionLeftSvg,
    Svg.wiDirectionRightSvg,
    Svg.wiDirectionUpLeftSvg,
    Svg.wiDirectionUpRightSvg,
    Svg.wiDirectionUpSvg,
    Svg.wiDustSvg,
    Svg.wiEarthquakeSvg,
    Svg.wiFahrenheitSvg,
    Svg.wiFireSvg,
    Svg.wiFloodSvg,
    Svg.wiFogSvg,
    Svg.wiGaleWarningSvg,
    Svg.wiHailSvg,
    Svg.wiHorizonAltSvg,
    Svg.wiHorizonSvg,
    Svg.wiHotSvg,
    Svg.wiHumiditySvg,
    Svg.wiHurricaneWarningSvg,
    Svg.wiHurricaneSvg,
    Svg.wiLightningSvg,
    Svg.wiLunarEclipseSvg,
    Svg.wiMeteorSvg,
    Svg.wiMoonAltFirstQuarterSvg,
    Svg.wiMoonAltFullSvg,
    Svg.wiMoonAltNewSvg,
    Svg.wiMoonAltThirdQuarterSvg,
    Svg.wiMoonAltWaningCrescent1Svg,
    Svg.wiMoonAltWaningCrescent2Svg,
    Svg.wiMoonAltWaningCrescent3Svg,
    Svg.wiMoonAltWaningCrescent4Svg,
    Svg.wiMoonAltWaningCrescent5Svg,
    Svg.wiMoonAltWaningCrescent6Svg,
    Svg.wiMoonAltWaningGibbous1Svg,
    Svg.wiMoonAltWaningGibbous2Svg,
    Svg.wiMoonAltWaningGibbous3Svg,
    Svg.wiMoonAltWaningGibbous4Svg,
    Svg.wiMoonAltWaningGibbous5Svg,
    Svg.wiMoonAltWaningGibbous6Svg,
    Svg.wiMoonAltWaxingCrescent1Svg,
    Svg.wiMoonAltWaxingCrescent2Svg,
    Svg.wiMoonAltWaxingCrescent3Svg,
    Svg.wiMoonAltWaxingCrescent4Svg,
    Svg.wiMoonAltWaxingCrescent5Svg,
    Svg.wiMoonAltWaxingGibbous1Svg,
    Svg.wiMoonAltWaxingGibbous2Svg,
    Svg.wiMoonAltWaxingGibbous3Svg,
    Svg.wiMoonAltWaxingGibbous4Svg,
    Svg.wiMoonAltWaxingGibbous5Svg,
    Svg.wiMoonFirstQuarterSvg,
    Svg.wiMoonFullSvg,
    Svg.wiMoonNewSvg,
    Svg.wiMoonThirdQuarterSvg,
    Svg.wiMoonWaningCrescent1Svg,
    Svg.wiMoonWaningCrescent2Svg,
    Svg.wiMoonWaningCrescent3Svg,
    Svg.wiMoonWaningCrescent5Svg,
    Svg.wiMoonWaningCrescent6Svg,
    Svg.wiMoonWaningGibbous1Svg,
    Svg.wiMoonWaningGibbous2Svg,
    Svg.wiMoonWaningGibbous3Svg,
    Svg.wiMoonWaningGibbous4Svg,
    Svg.wiMoonWaningGibbous6Svg,
    Svg.wiMoonWaxingCrescent1Svg,
    Svg.wiMoonWaxingCrescent2Svg,
    Svg.wiMoonWaxingCrescent3Svg,
    Svg.wiMoonWaxingCrescent4Svg,
    Svg.wiMoonWaxingCrescent5Svg,
    Svg.wiMoonWaxingGibbous1Svg,
    Svg.wiMoonWaxingGibbous2Svg,
    Svg.wiMoonWaxingGibbous3Svg,
    Svg.wiMoonWaxingGibbous5Svg,
    Svg.wiMoonWaxingGibbous6Svg,
    Svg.wiMoonriseSvg,
    Svg.wiMoonsetSvg,
    Svg.wiNaSvg,
    Svg.wiNightAltCloudyGustsSvg,
    Svg.wiNightAltCloudyHighSvg,
    Svg.wiNightAltCloudyWindySvg,
    Svg.wiNightAltCloudySvg,
    Svg.wiNightAltHailSvg,
    Svg.wiNightAltLightningSvg,
    Svg.wiNightAltPartlyCloudySvg,
    Svg.wiNightAltRainMixSvg,
    Svg.wiNightAltRainWindSvg,
    Svg.wiNightAltRainSvg,
    Svg.wiNightAltShowersSvg,
    Svg.wiNightAltSleetStormSvg,
    Svg.wiNightAltSleetSvg,
    Svg.wiNightAltSnowThunderstormSvg,
    Svg.wiNightAltSnowWindSvg,
    Svg.wiNightAltSnowSvg,
    Svg.wiNightAltSprinkleSvg,
    Svg.wiNightAltStormShowersSvg,
    Svg.wiNightAltThunderstormSvg,
    Svg.wiNightClearSvg,
    Svg.wiNightCloudyGustsSvg,
    Svg.wiNightCloudyHighSvg,
    Svg.wiNightCloudyWindySvg,
    Svg.wiNightCloudySvg,
    Svg.wiNightFogSvg,
    Svg.wiNightHailSvg,
    Svg.wiNightLightningSvg,
    Svg.wiNightPartlyCloudySvg,
    Svg.wiNightRainMixSvg,
    Svg.wiNightRainWindSvg,
    Svg.wiNightRainSvg,
    Svg.wiNightShowersSvg,
    Svg.wiNightSleetStormSvg,
    Svg.wiNightSleetSvg,
    Svg.wiNightSnowThunderstormSvg,
    Svg.wiNightSnowWindSvg,
    Svg.wiNightSnowSvg,
    Svg.wiNightSprinkleSvg,
    Svg.wiNightStormShowersSvg,
    Svg.wiNightThunderstormSvg,
    Svg.wiRainMixSvg,
    Svg.wiRainWindSvg,
    Svg.wiRainSvg,
    Svg.wiRaindropSvg,
    Svg.wiRaindropsSvg,
    Svg.wiRefreshAltSvg,
    Svg.wiRefreshSvg,
    Svg.wiSandstormSvg,
    Svg.wiShowersSvg,
    Svg.wiSleetSvg,
    Svg.wiSmallCraftAdvisorySvg,
    Svg.wiSmogSvg,
    Svg.wiSmokeSvg,
    Svg.wiSnowWindSvg,
    Svg.wiSnowSvg,
    Svg.wiSnowflakeColdSvg,
  ]
  // swiftlint:enable trailing_comma
  @available(*, deprecated, renamed: "allImages")
  static let allValues: [AssetType] = allImages
}
// swiftlint:enable identifier_name line_length nesting type_body_length type_name

extension Image {
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

extension AssetColorTypeAlias {
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
