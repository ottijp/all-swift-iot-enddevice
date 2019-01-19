final class DeviceStatus: Decodable {
  var id: Int?
  var led: Bool
  init(id: Int? = nil, led: Bool) {
    self.id = id
    self.led = led
  }
}
