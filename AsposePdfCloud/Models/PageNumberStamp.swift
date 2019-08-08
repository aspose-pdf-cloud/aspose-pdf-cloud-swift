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


/** Represents Pdf stamps. */

open class PageNumberStamp: StampBase {

    /** Gets or sets string value which is used as stamp on the page. */
    public var value: String?
    /** Gets or sets value of the number of starting page. Other pages will be numbered starting from this value. */
    public var startingNumber: Int?
    /** Gets or sets vertical alignment of stamp on page. */
    public var verticalAlignment: VerticalAlignment?
    /** Gets or sets bottom margin of stamp. */
    public var bottomMargin: Double?
    /** Gets or sets left margin of stamp. */
    public var leftMargin: Double?
    /** Gets or sets top margin of stamp. */
    public var topMargin: Double?
    /** Gets or sets right margin of stamp. */
    public var rightMargin: Double?

    
    public init(links: [Link]?, background: Bool?, horizontalAlignment: HorizontalAlignment?, opacity: Double?, rotate: Rotation?, rotateAngle: Double?, xIndent: Double?, yIndent: Double?, zoom: Double?, value: String?, startingNumber: Int?, verticalAlignment: VerticalAlignment?, bottomMargin: Double?, leftMargin: Double?, topMargin: Double?, rightMargin: Double?) {
        super.init(links: links)
        self.value = value
        self.startingNumber = startingNumber
        self.verticalAlignment = verticalAlignment
        self.bottomMargin = bottomMargin
        self.leftMargin = leftMargin
        self.topMargin = topMargin
        self.rightMargin = rightMargin
    }
        
    

    // Encodable protocol methods

    public override func encode(to encoder: Encoder) throws {

        var container = encoder.container(keyedBy: String.self)

        try container.encodeIfPresent(value, forKey: "Value")
        try container.encodeIfPresent(startingNumber, forKey: "StartingNumber")
        try container.encodeIfPresent(verticalAlignment, forKey: "VerticalAlignment")
        try container.encodeIfPresent(bottomMargin, forKey: "BottomMargin")
        try container.encodeIfPresent(leftMargin, forKey: "LeftMargin")
        try container.encodeIfPresent(topMargin, forKey: "TopMargin")
        try container.encodeIfPresent(rightMargin, forKey: "RightMargin")
        try super.encode(to: encoder)
    }

    // Decodable protocol methods

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: String.self)

        value = try container.decodeIfPresent(String.self, forKey: "Value")
        startingNumber = try container.decodeIfPresent(Int.self, forKey: "StartingNumber")
        verticalAlignment = try container.decodeIfPresent(VerticalAlignment.self, forKey: "VerticalAlignment")
        bottomMargin = try container.decodeIfPresent(Double.self, forKey: "BottomMargin")
        leftMargin = try container.decodeIfPresent(Double.self, forKey: "LeftMargin")
        topMargin = try container.decodeIfPresent(Double.self, forKey: "TopMargin")
        rightMargin = try container.decodeIfPresent(Double.self, forKey: "RightMargin")
        try super.init(from: decoder)
    }
}

