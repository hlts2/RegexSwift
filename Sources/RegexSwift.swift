import Foundation

open class RegexSwift {
    
    private init(){}
    
    open static func compile(
                        pattern: String,
                        options: NSRegularExpression.Options = []) -> RegexObject {
        return RegexObject(pattern: pattern, options: options)
    }
    
    open static func match(
                        pattern : String,
                        target  : String,
                        options : NSRegularExpression.Options = []) -> Bool {
        return RegexObject(pattern: pattern, options: options).match(target: target)
    }
    
    open static func replaceAllString(
                        pattern : String,
                        target  : String,
                        with    : String,
                        options : NSRegularExpression.Options = []) -> String {
        return RegexObject(pattern: pattern, options: options).replaceAllString(target: target, with: with)
    }
    
    open static func findAllStringSubMatch(
                        pattern : String,
                        target  : String,
                        options : NSRegularExpression.Options = []) -> [String]? {
        return RegexObject(pattern: pattern, options: options).findAllStringSubMatch(target: target)
    }
    
    open static func split(
                        pattern : String,
                        target  : String,
                        options : NSRegularExpression.Options)  -> [String]? {
        return RegexObject(pattern: pattern, options: options).split(target: target)
    }
}
