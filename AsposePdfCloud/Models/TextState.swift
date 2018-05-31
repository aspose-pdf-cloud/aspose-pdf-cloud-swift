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


/** Represents a text state of a text */

open class TextState: Codable {

    /** Gets or sets font size of the text. */
    public var fontSize: Double
    /** Gets or sets font of the text. */
    public var font: String?
    /** Gets or sets foreground color of the text. */
    public var foregroundColor: Color?
    /** Sets background color of the text. */
    public var backgroundColor: Color?
    /** Sets font style of the text. */
    public var fontStyle: FontStyles


    
    public init(fontSize: Double, font: String?, foregroundColor: Color?, backgroundColor: Color?, fontStyle: FontStyles) {
        self.fontSize = fontSize
        self.font = font
        self.foregroundColor = foregroundColor
        self.backgroundColor = backgroundColor
        self.fontStyle = fontStyle
    }
    

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {

        var container = encoder.container(keyedBy: String.self)

        try container.encode(fontSize, forKey: "FontSize")
        try container.encodeIfPresent(font, forKey: "Font")
        try container.encodeIfPresent(foregroundColor, forKey: "ForegroundColor")
        try container.encodeIfPresent(backgroundColor, forKey: "BackgroundColor")
        try container.encode(fontStyle, forKey: "FontStyle")
    }

    // Decodable protocol methods

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: String.self)

        fontSize = try container.decode(Double.self, forKey: "FontSize")
        font = try container.decodeIfPresent(String.self, forKey: "Font")
        foregroundColor = try container.decodeIfPresent(Color.self, forKey: "ForegroundColor")
        backgroundColor = try container.decodeIfPresent(Color.self, forKey: "BackgroundColor")
        fontStyle = try container.decode(FontStyles.self, forKey: "FontStyle")
    }
}

