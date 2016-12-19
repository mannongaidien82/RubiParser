// Original: https://gist.github.com/natecook1000/59bb0c9117b555f5d40d
// Swift 3 fork: https://gist.github.com/ekurutepe/3d709b1d30e4f451473361b09e47464c
// Added @discardableResult for RubiParser
//
// NSScanner+Swift.swift
// A set of Swift-idiomatic methods for NSScanner
//
// (c) 2015 Nate Cook, licensed under the MIT license

import Foundation

internal extension Scanner {
    
    // MARK: Strings
    
    /// Returns a string, scanned as long as characters from a given character set are encountered, or `nil` if none are found.
    @discardableResult
    func scanCharacters(from set: CharacterSet) -> String? {
        var value: NSString? = ""
        if scanCharacters(from: set, into: &value),
            let value = value as? String {
            return value
        }
        return nil
    }
    
    /// Returns a string, scanned until a character from a given character set are encountered, or the remainder of the scanner's string. Returns `nil` if the scanner is already `atEnd`.
    @discardableResult
    func scanUpToCharacters(from set: CharacterSet) -> String? {
        var value: NSString? = ""
        if scanUpToCharacters(from: set, into: &value),
            let value = value as? String {
            return value
        }
        return nil
    }
    
    /// Returns the given string if scanned, or `nil` if not found.
    @discardableResult
    func scanString(str: String) -> String? {
        var value: NSString? = ""
        if scanString(str, into: &value),
            let value = value as? String {
            return value
        }
        return nil
    }
    
    /// Returns a string, scanned until the given string is found, or the remainder of the scanner's string. Returns `nil` if the scanner is already `atEnd`.
    @discardableResult
    func scanUpToString(str: String) -> String? {
        var value: NSString? = ""
        if scanUpTo(str, into: &value),
            let value = value as? String {
            return value
        }
        return nil
    }
    
    // MARK: Numbers
    
    /// Returns a Double if scanned, or `nil` if not found.
    @discardableResult
    func scanDouble() -> Double? {
        var value = 0.0
        if scanDouble(&value) {
            return value
        }
        return nil
    }
    
    /// Returns a Float if scanned, or `nil` if not found.
    @discardableResult
    func scanFloat() -> Float? {
        var value: Float = 0.0
        if scanFloat(&value) {
            return value
        }
        return nil
    }
    
    /// Returns an Int if scanned, or `nil` if not found.
    @discardableResult
    func scanInteger() -> Int? {
        var value = 0
        if scanInt(&value) {
            return value
        }
        return nil
    }
    
    /// Returns an Int32 if scanned, or `nil` if not found.
    @discardableResult
    func scanInt() -> Int32? {
        var value: Int32 = 0
        if scanInt32(&value) {
            return value
        }
        return nil
    }
    
    /// Returns an Int64 if scanned, or `nil` if not found.
    @discardableResult
    func scanLongLong() -> Int64? {
        var value: Int64 = 0
        if scanInt64(&value) {
            return value
        }
        return nil
    }
    
    /// Returns a UInt64 if scanned, or `nil` if not found.
    @discardableResult
    func scanUnsignedLongLong() -> UInt64? {
        var value: UInt64 = 0
        if scanUnsignedLongLong(&value) {
            return value
        }
        return nil
    }
    
    /// Returns an NSDecimal if scanned, or `nil` if not found.
    @discardableResult
    func scanDecimal() -> Decimal? {
        var value = Decimal()
        if scanDecimal(&value) {
            return value
        }
        return nil
    }
    
    // MARK: Hex Numbers
    
    /// Returns a Double if scanned in hexadecimal, or `nil` if not found.
    @discardableResult
    func scanHexDouble() -> Double? {
        var value = 0.0
        if scanHexDouble(&value) {
            return value
        }
        return nil
    }
    
    /// Returns a Float if scanned in hexadecimal, or `nil` if not found.
    @discardableResult
    func scanHexFloat() -> Float? {
        var value: Float = 0.0
        if scanHexFloat(&value) {
            return value
        }
        return nil
    }
    
    /// Returns a UInt32 if scanned in hexadecimal, or `nil` if not found.
    @discardableResult
    func scanHexInt() -> UInt32? {
        var value: UInt32 = 0
        if scanHexInt32(&value) {
            return value
        }
        return nil
    }
    
    /// Returns a UInt64 if scanned in hexadecimal, or `nil` if not found.
    @discardableResult
    func scanHexLongLong() -> UInt64? {
        var value: UInt64 = 0
        if scanHexInt64(&value) {
            return value
        }
        return nil
    }
}
