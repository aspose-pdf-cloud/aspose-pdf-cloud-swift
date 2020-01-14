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



open class TableRecognized: LinkElement {

    /** Gets readonly IList containing rows of the table */
    public var rowList: [RowRecognized]?
    /** Gets rectangle that describes position of the table on page */
    public var rectangle: Rectangle?
    /** Gets number of the page containing this table */
    public var pageNum: Int?
    /** Gets ID of the table. */
    public var id: String?

    
    public init(links: [Link]?, rowList: [RowRecognized]?, rectangle: Rectangle?, pageNum: Int?, id: String?) {
        super.init(links: links)
        self.rowList = rowList
        self.rectangle = rectangle
        self.pageNum = pageNum
        self.id = id
    }
        
    

    // Encodable protocol methods

    public override func encode(to encoder: Encoder) throws {

        var container = encoder.container(keyedBy: String.self)

        try container.encodeIfPresent(rowList, forKey: "RowList")
        try container.encodeIfPresent(rectangle, forKey: "Rectangle")
        try container.encodeIfPresent(pageNum, forKey: "PageNum")
        try container.encodeIfPresent(id, forKey: "Id")
        try super.encode(to: encoder)
    }

    // Decodable protocol methods

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: String.self)

        rowList = try container.decodeIfPresent([RowRecognized].self, forKey: "RowList")
        rectangle = try container.decodeIfPresent(Rectangle.self, forKey: "Rectangle")
        pageNum = try container.decodeIfPresent(Int.self, forKey: "PageNum")
        id = try container.decodeIfPresent(String.self, forKey: "Id")
        try super.init(from: decoder)
    }
}

