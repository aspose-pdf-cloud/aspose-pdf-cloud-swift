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


/** Represents image DTO. */

open class Image: LinkElement {

    /** Gets width of the image. */
    public var width: Int?
    /** Gets height of the image. */
    public var height: Int?
    /** Gets ID of the image. */
    public var id: String?
    /** Gets rectangle of the image. */
    public var rectangle: Rectangle?
    /** Gets page number. */
    public var pageNumber: Int?

    
    public init(links: [Link]?, width: Int?, height: Int?, id: String?, rectangle: Rectangle?, pageNumber: Int?) {
        super.init(links: links)
        self.width = width
        self.height = height
        self.id = id
        self.rectangle = rectangle
        self.pageNumber = pageNumber
    }
        
    

    // Encodable protocol methods

    public override func encode(to encoder: Encoder) throws {

        var container = encoder.container(keyedBy: String.self)

        try container.encodeIfPresent(width, forKey: "Width")
        try container.encodeIfPresent(height, forKey: "Height")
        try container.encodeIfPresent(id, forKey: "Id")
        try container.encodeIfPresent(rectangle, forKey: "Rectangle")
        try container.encodeIfPresent(pageNumber, forKey: "PageNumber")
        try super.encode(to: encoder)
    }

    // Decodable protocol methods

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: String.self)

        width = try container.decodeIfPresent(Int.self, forKey: "Width")
        height = try container.decodeIfPresent(Int.self, forKey: "Height")
        id = try container.decodeIfPresent(String.self, forKey: "Id")
        rectangle = try container.decodeIfPresent(Rectangle.self, forKey: "Rectangle")
        pageNumber = try container.decodeIfPresent(Int.self, forKey: "PageNumber")
        try super.init(from: decoder)
    }
}

