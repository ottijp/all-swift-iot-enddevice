# all-swift-iotのIoTデバイスモジュール

[SwiftyGPIO](https://github.com/uraimo/SwiftyGPIO)と[SeeURL](https://github.com/shiroyagicorp/swift-seeurl)を使って，[all-swift-iot-server](https://github.com/ottijp/all-swift-iot-server)からデバイス状態を取得してLEDを制御します．

## 環境

* Raspbery Pi 3 Model B
* Rasbian 2018-11-13 (Debian 9.6)
* Swift 4.1.3

## 準備

* [uraimo/buildSwiftOnARM](https://github.com/uraimo/buildSwiftOnARM)を使ってSwiftの環境を構築する
* GPIO25にLEDと抵抗を接続する

## 実行方法

[all-swift-iot-server](https://github.com/ottijp/all-swift-iot-server)をデプロイしたURLを環境変数`API_URL`にセットして起動します．

```
$ API_URL=https://hoge.herokuapp.com/deviceStatus/1 swift run
```
