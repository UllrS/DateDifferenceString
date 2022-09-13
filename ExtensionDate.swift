
import Foundation

extension Date{
    func toString(format: String) -> String{
        let formatter = DateFormatter()
        formatter.dateFormat = format
        return formatter.string(from: self)
    }
    func differenceString() -> String {
//        var dateNow = Date().timeIntervalSinceReferenceDate
        let differenceInterval = Date().timeIntervalSinceReferenceDate - self.timeIntervalSinceReferenceDate
        
        switch differenceInterval {
        case 0..<60:
            return "just now"
        case 60..<300:
            return "a few minutes ago"
        case 300..<3600:
            return "\(Int(differenceInterval / 60)) minutes ago"
        case 3600..<7200:
            return "one hour ago"
        case 7200..<86400:
            let formatter = DateFormatter()
            formatter.dateFormat = "hh:mm"
            return formatter.string(from: self)
        case 86400..<2592000:
            let formatter = DateFormatter()
            formatter.dateFormat = "dd-MM hh:mm"
            return formatter.string(from: self)
        case 2592000..<31536000:
            let formatter = DateFormatter()
            formatter.dateFormat = "dd-MM-yyyy hh:mm"
            return formatter.string(from: self)
        default:
            let formatter = DateFormatter()
            formatter.dateFormat = "dd-MM-yyyy hh:mm"
            return formatter.string(from: self)
        }
    }
}
