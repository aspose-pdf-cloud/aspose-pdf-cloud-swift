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


/** Provides stamp info. */

open class StampInfo: LinkElement {

    /** Gets ID of the stamp. */
    public var id: String?
    /** Gets index on page of the stamp. */
    public var indexOnPage: Int?
    /** Gets PageIndex of the annotation. */
    public var pageIndex: Int?
    /** Gets Rect of the annotation. */
    public var rect: Rectangle?
    /** Get the text content. */
    public var text: String?
    /** Gets the stamp is visible. */
    public var visible: Bool?
    /** Gets stamp type. */
    public var stampType: StampType?

    
    public init(links: [Link]?, id: String?, indexOnPage: Int?, pageIndex: Int?, rect: Rectangle?, text: String?, visible: Bool?, stampType: StampType?) {
        super.init(links: links)
        self.id = id
        self.indexOnPage = indexOnPage
        self.pageIndex = pageIndex
        self.rect = rect
        self.text = text
        self.visible = visible
        self.stampType = stampType
    }
        
    

    // Encodable protocol methods

    public override func encode(to encoder: Encoder) throws {

        var container = encoder.container(keyedBy: String.self)

        try container.encodeIfPresent(id, forKey: "Id")
        try container.encodeIfPresent(indexOnPage, forKey: "IndexOnPage")
        try container.encodeIfPresent(pageIndex, forKey: "PageIndex")
        try container.encodeIfPresent(rect, forKey: "Rect")
        try container.encodeIfPresent(text, forKey: "Text")
        try container.encodeIfPresent(visible, forKey: "Visible")
        try container.encodeIfPresent(stampType, forKey: "StampType")
        try super.encode(to: encoder)
    }

    // Decodable protocol methods

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: String.self)

        id = try container.decodeIfPresent(String.self, forKey: "Id")
        indexOnPage = try container.decodeIfPresent(Int.self, forKey: "IndexOnPage")
        pageIndex = try container.decodeIfPresent(Int.self, forKey: "PageIndex")
        rect = try container.decodeIfPresent(Rectangle.self, forKey: "Rect")
        text = try container.decodeIfPresent(String.self, forKey: "Text")
        visible = try container.decodeIfPresent(Bool.self, forKey: "Visible")
        stampType = try container.decodeIfPresent(StampType.self, forKey: "StampType")
        try super.init(from: decoder)
    }
}

