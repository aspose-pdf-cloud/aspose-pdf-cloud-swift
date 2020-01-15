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


/** This class represents a margin for different objects. */

open class MarginInfo: Codable {

    /** Gets or sets a float value that indicates the left margin. */
    public var _left: Double?
    /** Gets or sets a float value that indicates the right margin. */
    public var _right: Double?
    /** Gets or sets a float value that indicates the top margin. */
    public var top: Double?
    /** Gets or sets a float value that indicates the bottom margin. */
    public var bottom: Double?

        
    
    public init(_left: Double?, _right: Double?, top: Double?, bottom: Double?) {
        self._left = _left
        self._right = _right
        self.top = top
        self.bottom = bottom
    }
    

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {

        var container = encoder.container(keyedBy: String.self)

        try container.encodeIfPresent(_left, forKey: "Left")
        try container.encodeIfPresent(_right, forKey: "Right")
        try container.encodeIfPresent(top, forKey: "Top")
        try container.encodeIfPresent(bottom, forKey: "Bottom")
    }

    // Decodable protocol methods

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: String.self)

        _left = try container.decodeIfPresent(Double.self, forKey: "Left")
        _right = try container.decodeIfPresent(Double.self, forKey: "Right")
        top = try container.decodeIfPresent(Double.self, forKey: "Top")
        bottom = try container.decodeIfPresent(Double.self, forKey: "Bottom")
    }
}

