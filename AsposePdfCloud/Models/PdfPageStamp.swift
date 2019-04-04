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

open class PdfPageStamp: StampBase {

    /** Gets or sets the file name. */
    public var fileName: String?
    /** Gets or sets the index of the page. */
    public var pageIndex: Int?

    
    public init(links: [Link]?, background: Bool?, bottomMargin: Double?, horizontalAlignment: HorizontalAlignment?, leftMargin: Double?, opacity: Double?, rightMargin: Double?, rotate: Rotation?, rotateAngle: Double?, topMargin: Double?, verticalAlignment: VerticalAlignment?, xIndent: Double?, yIndent: Double?, zoom: Double?, fileName: String?, pageIndex: Int?) {
        super.init(links: links, background: background, bottomMargin: bottomMargin, horizontalAlignment: horizontalAlignment, leftMargin: leftMargin, opacity: opacity, rightMargin: rightMargin, rotate: rotate, rotateAngle: rotateAngle, topMargin: topMargin, verticalAlignment: verticalAlignment, xIndent: xIndent, yIndent: yIndent, zoom: zoom)
        self.fileName = fileName
        self.pageIndex = pageIndex
    }
        
    

    // Encodable protocol methods

    public override func encode(to encoder: Encoder) throws {

        var container = encoder.container(keyedBy: String.self)

        try container.encodeIfPresent(fileName, forKey: "FileName")
        try container.encodeIfPresent(pageIndex, forKey: "PageIndex")
        try super.encode(to: encoder)
    }

    // Decodable protocol methods

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: String.self)

        fileName = try container.decodeIfPresent(String.self, forKey: "FileName")
        pageIndex = try container.decodeIfPresent(Int.self, forKey: "PageIndex")
        try super.init(from: decoder)
    }
}

