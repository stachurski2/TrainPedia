import Foundation


class TrainProvider {
    
    static var sharedInstance = TrainProvider()

    private init() {}

    lazy var trains: [Train] = {
        var trains = [Train]()
        trains.append(Train(id: 0, name: "EN57", imageName: "train_en57", isFavorited: false))
        trains.append(Train(id: 1, name: "EN71", imageName: "train_en71", isFavorited: false))
        trains.append(Train(id: 2, name: "ED73", imageName: "train_ed73", isFavorited: false))
        trains.append(Train(id: 3, name: "ED74", imageName: "train_ed74", isFavorited: false))
        trains.append(Train(id: 4, name: "EN75", imageName: "train_en75", isFavorited: false))
        trains.append(Train(id: 5, name: "EN76", imageName: "train_en76", isFavorited: false))
        trains.append(Train(id: 7, name: "EN78", imageName: "train_en78", isFavorited: false))
        trains.append(Train(id: 8, name: "ED160", imageName: "train_ed160", isFavorited: false))
        trains.append(Train(id: 9, name: "ED161", imageName: "train_ed161", isFavorited: false))
        trains.append(Train(id: 10, name: "ED250", imageName: "train_ed250", isFavorited: false))
        return trains
    }()
}
