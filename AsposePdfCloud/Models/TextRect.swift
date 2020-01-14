/**
 *
 *   Copyright (c) 2020 Aspose.PDF Cloud
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


/** Represents text occurrence. */

open class TextRect: Codable {

    /** Text of the occurrence. */
    public var text: String?
    /** Page on which the occurrence is found. */
    public var page: Int?
    /** Rectangle of the occurrence. */
    public var rect: Rectangle?
    /** Gets or sets a horizontal alignment of text fragment.  */
    public var horizontalAlignment: HorizontalAlignment?
    /** Gets or sets a vertical alignment of text fragment.  */
    public var verticalAlignment: VerticalAlignment?
    /** Gets or sets text position for text, represented with TextRect object. */
    public var position: Position?
    /** Gets text position for text, represented with TextRect object. The YIndent of the Position structure represents baseline coordinate of the text fragment. */
    public var baselinePosition: Position?
    /** Gets or sets text state for the text that TextRect object represents. */
    public var textState: TextState?

        
    
    public init(text: String?, page: Int?, rect: Rectangle?, horizontalAlignment: HorizontalAlignment?, verticalAlignment: VerticalAlignment?, position: Position?, baselinePosition: Position?, textState: TextState?) {
        self.text = text
        self.page = page
        self.rect = rect
        self.horizontalAlignment = horizontalAlignment
        self.verticalAlignment = verticalAlignment
        self.position = position
        self.baselinePosition = baselinePosition
        self.textState = textState
    }
    

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {

        var container = encoder.container(keyedBy: String.self)

        try container.encodeIfPresent(text, forKey: "Text")
        try container.encodeIfPresent(page, forKey: "Page")
        try container.encodeIfPresent(rect, forKey: "Rect")
        try container.encodeIfPresent(horizontalAlignment, forKey: "HorizontalAlignment")
        try container.encodeIfPresent(verticalAlignment, forKey: "VerticalAlignment")
        try container.encodeIfPresent(position, forKey: "Position")
        try container.encodeIfPresent(baselinePosition, forKey: "BaselinePosition")
        try container.encodeIfPresent(textState, forKey: "TextState")
    }

    // Decodable protocol methods

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: String.self)

        text = try container.decodeIfPresent(String.self, forKey: "Text")
        page = try container.decodeIfPresent(Int.self, forKey: "Page")
        rect = try container.decodeIfPresent(Rectangle.self, forKey: "Rect")
        horizontalAlignment = try container.decodeIfPresent(HorizontalAlignment.self, forKey: "HorizontalAlignment")
        verticalAlignment = try container.decodeIfPresent(VerticalAlignment.self, forKey: "VerticalAlignment")
        position = try container.decodeIfPresent(Position.self, forKey: "Position")
        baselinePosition = try container.decodeIfPresent(Position.self, forKey: "BaselinePosition")
        textState = try container.decodeIfPresent(TextState.self, forKey: "TextState")
    }
}

