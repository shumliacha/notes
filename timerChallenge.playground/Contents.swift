import Foundation

var runCount = 0

Timer.scheduledTimer(withTimeInterval: 1.0, repeats: true) { timer in
    print("Timer fired!")
    runCount += 1

    if runCount == 3 {
        timer.invalidate()
    }
}

//var timer: Timer?
//var runCount = 0
//
//timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(fireTimer), userInfo: nil, repeats: true)
//
//@objc func fireTimer() {
//    print("Timer fired!")
//    runCount += 1
//
//    if runCount == 3 {
//        timer?.invalidate()
//    }
//}
