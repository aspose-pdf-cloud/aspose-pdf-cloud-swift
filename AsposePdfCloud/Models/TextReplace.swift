/**
 *
 *   Copyright (c) 2018 Aspose.Pdf for Cloud
 * Permission is hereby granted, free of charge, to any person obtaining a copy
 * of this software and associated documentation files (the "Software"), to deal
 * in the Software without restriction, including without limitation the rights
 * to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
 * copies of the Software, and to permit persons to whom the Software is
 * furnished to do so, subject to the following conditions:
 * The above copyright notice and this permission notice shall be included in all
 * copies or substantial portions of the Software.
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 * AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 * LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
 * OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
 * SOFTWARE.
 *
 */




import Foundation


/** Single text replacement setting. */

open class TextReplace: Codable {

    /** Original text. */
    public var oldValue: String
    /** New text. */
    public var newValue: String
    /** Gets or sets a value indicating whether search text is regular expression. */
    public var regex: Bool
    /** Text properties of a new text. */
    public var textState: TextState?
    /** Rectangle area where searched original text. */
    public var rect: Rectangle?

        
    
    public init(oldValue: String, newValue: String, regex: Bool, textState: TextState?, rect: Rectangle?) {
        self.oldValue = oldValue
        self.newValue = newValue
        self.regex = regex
        self.textState = textState
        self.rect = rect
    }
    

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {

        var container = encoder.container(keyedBy: String.self)

        try container.encode(oldValue, forKey: "OldValue")
        try container.encode(newValue, forKey: "NewValue")
        try container.encode(regex, forKey: "Regex")
        try container.encodeIfPresent(textState, forKey: "TextState")
        try container.encodeIfPresent(rect, forKey: "Rect")
    }

    // Decodable protocol methods

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: String.self)

        oldValue = try container.decode(String.self, forKey: "OldValue")
        newValue = try container.decode(String.self, forKey: "NewValue")
        regex = try container.decode(Bool.self, forKey: "Regex")
        textState = try container.decodeIfPresent(TextState.self, forKey: "TextState")
        rect = try container.decodeIfPresent(Rectangle.self, forKey: "Rect")
    }
}

