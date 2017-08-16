import XCTest
@testable import RegexSwift

class RegexSwiftTests: XCTestCase {
    
    func testCompileExample() {
        let _ = RegexSwift.mustCompile(pattern: "a*c")
    }
    
    func testMatchExample() {
        let regex = RegexSwift.mustCompile(pattern: "a*c")
        print(regex.match(target: "aabbbbbbbc"))
    }
    
    func testReplaceAllStringExample() {
        let regex = RegexSwift.mustCompile(pattern: "[A-Za-z]*right")
        print(regex.replaceAllString(target:  "Copyright 2017 hlts." , with: "Copyleft"))
    }
    
    func testSplitExample() {
        let regex = RegexSwift.mustCompile(pattern: "\\s*,\\s")
        print(regex.split(target: "00000001,hihihihi roooootototototo, hlts2")!)
    }
    
    func testFindAllStringSubMatchExample() {
        let regex = RegexSwift.mustCompile(pattern: "[\\d\\-]+")
        print(regex.findAllStringSubMatch(target: "hiro:123-111-222245 hirot:004123455-33333222-245354234222")!)
    }
    
    static var allTests = [
        ("testCompileExample", testCompileExample),
        ("testMatchExample", testMatchExample),
        ("testReplaceAllStringExample", testReplaceAllStringExample),
        ("testFindAllStringSubMatchExample", testFindAllStringSubMatchExample)
    ]
}
