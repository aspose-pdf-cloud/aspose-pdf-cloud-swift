/**
 *
 *   Copyright (c) 2019 Aspose.PDF Cloud
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


/** This class represents border for graphics elements. */

open class BorderInfo: Codable {

    /** Gets or sets a object that indicates left of the border. */
    public var _left: GraphInfo?
    /** Gets or sets a object that indicates right of the border. */
    public var _right: GraphInfo?
    /** Gets or sets a object that indicates the top border. */
    public var top: GraphInfo?
    /** Gets or sets a object that indicates bottom of the border. */
    public var bottom: GraphInfo?
    /** Gets or sets a rouded border radius */
    public var roundedBorderRadius: Double?

        
    
    public init(_left: GraphInfo?, _right: GraphInfo?, top: GraphInfo?, bottom: GraphInfo?, roundedBorderRadius: Double?) {
        self._left = _left
        self._right = _right
        self.top = top
        self.bottom = bottom
        self.roundedBorderRadius = roundedBorderRadius
    }
    

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {

        var container = encoder.container(keyedBy: String.self)

        try container.encodeIfPresent(_left, forKey: "Left")
        try container.encodeIfPresent(_right, forKey: "Right")
        try container.encodeIfPresent(top, forKey: "Top")
        try container.encodeIfPresent(bottom, forKey: "Bottom")
        try container.encodeIfPresent(roundedBorderRadius, forKey: "RoundedBorderRadius")
    }

    // Decodable protocol methods

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: String.self)

        _left = try container.decodeIfPresent(GraphInfo.self, forKey: "Left")
        _right = try container.decodeIfPresent(GraphInfo.self, forKey: "Right")
        top = try container.decodeIfPresent(GraphInfo.self, forKey: "Top")
        bottom = try container.decodeIfPresent(GraphInfo.self, forKey: "Bottom")
        roundedBorderRadius = try container.decodeIfPresent(Double.self, forKey: "RoundedBorderRadius")
    }
}

