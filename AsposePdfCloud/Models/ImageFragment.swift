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


/** Represents Image Fragment DTO. */

open class ImageFragment: Codable {

    /** Gets or sets full storage path of image. */
    public var imageFile: String
    /** Gets or sets fix width of the image. */
    public var fixWidth: Double?
    /** Gets or sets fix height of the image. */
    public var fixHeight: Double?
    /** Gets or sets horizontal alignment of the image. */
    public var horizontalAlignment: HorizontalAlignment?
    /** Gets or sets vertical alignment of the image. */
    public var verticalAlignment: VerticalAlignment?
    /** Gets or sets ImageScale of the image. */
    public var imageScale: Double?
    /** Gets or sets Margin of the image. */
    public var margin: MarginInfo?

        
    
    public init(imageFile: String, fixWidth: Double?, fixHeight: Double?, horizontalAlignment: HorizontalAlignment?, verticalAlignment: VerticalAlignment?, imageScale: Double?, margin: MarginInfo?) {
        self.imageFile = imageFile
        self.fixWidth = fixWidth
        self.fixHeight = fixHeight
        self.horizontalAlignment = horizontalAlignment
        self.verticalAlignment = verticalAlignment
        self.imageScale = imageScale
        self.margin = margin
    }
    

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {

        var container = encoder.container(keyedBy: String.self)

        try container.encode(imageFile, forKey: "ImageFile")
        try container.encodeIfPresent(fixWidth, forKey: "FixWidth")
        try container.encodeIfPresent(fixHeight, forKey: "FixHeight")
        try container.encodeIfPresent(horizontalAlignment, forKey: "HorizontalAlignment")
        try container.encodeIfPresent(verticalAlignment, forKey: "VerticalAlignment")
        try container.encodeIfPresent(imageScale, forKey: "ImageScale")
        try container.encodeIfPresent(margin, forKey: "Margin")
    }

    // Decodable protocol methods

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: String.self)

        imageFile = try container.decode(String.self, forKey: "ImageFile")
        fixWidth = try container.decodeIfPresent(Double.self, forKey: "FixWidth")
        fixHeight = try container.decodeIfPresent(Double.self, forKey: "FixHeight")
        horizontalAlignment = try container.decodeIfPresent(HorizontalAlignment.self, forKey: "HorizontalAlignment")
        verticalAlignment = try container.decodeIfPresent(VerticalAlignment.self, forKey: "VerticalAlignment")
        imageScale = try container.decodeIfPresent(Double.self, forKey: "ImageScale")
        margin = try container.decodeIfPresent(MarginInfo.self, forKey: "Margin")
    }
}

