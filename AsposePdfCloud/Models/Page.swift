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


/** Provides link to page. */

open class Page: LinkElement {

    /** Page&#39;s id. */
    public var id: Int
    /** Page&#39;s images */
    public var images: Images?
    /** Page&#39;s rectangle */
    public var rectangle: Rectangle?

    
    public init(links: [Link]?, id: Int, images: Images?, rectangle: Rectangle?) {
        self.id = id
        super.init(links: links)
        self.images = images
        self.rectangle = rectangle
    }
        
    

    // Encodable protocol methods

    public override func encode(to encoder: Encoder) throws {

        var container = encoder.container(keyedBy: String.self)

        try container.encode(id, forKey: "Id")
        try container.encodeIfPresent(images, forKey: "Images")
        try container.encodeIfPresent(rectangle, forKey: "Rectangle")
        try super.encode(to: encoder)
    }

    // Decodable protocol methods

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: String.self)

        id = try container.decode(Int.self, forKey: "Id")
        images = try container.decodeIfPresent(Images.self, forKey: "Images")
        rectangle = try container.decodeIfPresent(Rectangle.self, forKey: "Rectangle")
        try super.init(from: decoder)
    }
}

