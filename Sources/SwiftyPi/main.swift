import SwiftyGPIO
import SeeURL
import Foundation
import Glibc

guard let API_URL = ProcessInfo.processInfo.environment["API_URL"] else {
  fatalError("API_URL not set")
}

let gpios = SwiftyGPIO.GPIOs(for: .RaspberryPi3)
guard let gp = gpios[.P25] else {
  fatalError("cannot initialize GPIO port")
}
gp.direction = .OUT
gp.value = 1

print("SwiftPi started")

repeat {
  do {
    let result = try HTTPClient.sendRequest(method: "GET", url: API_URL)
    let deviceStatus = try JSONDecoder().decode(DeviceStatus.self, from: result.body)
    debugPrint("deviceStatus", deviceStatus.led)
    gp.value = (deviceStatus.led) ? 1 : 0
  } catch {
    print("cannot get device status")
  }

  usleep(500 * 1000)
} while (true)
