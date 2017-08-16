import Foundation

public class RegexObject {
    
    private var regex: NSRegularExpression
    
    public init(pattern: String, options: NSRegularExpression.Options = []) {
        do {
            regex = try NSRegularExpression(pattern: pattern, options: options)
        } catch {
            fatalError(error.localizedDescription)
        }
    }
    
    public func match(target: String, start: Int = 0, end: Int? = nil) -> Bool {
        let matches = regex.matches(
                                in      : target,
                                options : [],
                                range   : NSMakeRange(0, (end == nil ? target.characters.count : end!)))
        return matches.count > 0
    }
    
    public func replaceAllString(target: String, with: String) -> String {
        return regex.stringByReplacingMatches(
                                in           : target,
                                options      : [],
                                range        : NSMakeRange(0,target.characters.count),
                                withTemplate : with)
    }
    
    public func findAllStringSubMatch(target: String) -> [String]? {
        let matches = regex.matches(
                                in      : target,
                                options : [],
                                range   : NSMakeRange(0, target.characters.count))
        
        if matches.count > 0 {
            var results = [String]()
            
            for i in 0..<matches.count {
                let nsTarget = (target as NSString)
                results.append(nsTarget.substring(with: matches[i].range))
            }
            return results
        }
        return nil
    }
    
    public func split(target: String, times: Int = -1)  -> [String]? {
        if times < -1 {
            return nil
        }
        
        let stop         = "<RegexSwift::rewriteMatchedText>"
        let modified     = self.replaceAllString(target: target, with: stop)
        var splitedArray = modified.components(separatedBy: stop)
        
        if  times == -1 || times > splitedArray.count {
            return splitedArray
        }
        
        for i in times - 1..<splitedArray.count {
            splitedArray[times - 1] += splitedArray[i]
        }
        
        return Array(splitedArray[0..<times])
    }
    
}
