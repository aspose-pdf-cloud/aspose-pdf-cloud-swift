/**
 *
 *   Copyright (c) 2018 Aspose.PDF Cloud
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


/** Provides InkAnnotation. */

open class InkAnnotation: MarkupAnnotation {

    /** Color of the annotation. */
    public var color: Color?
    /** Gets or sets list of gestures that are independent lines which are represented by Point[] arrays. */
    public var inkList: [[Point]]?
    /** Style of ink annotation line endings. */
    public var capStyle: CapStyle?

    
    public init(links: [Link]?, contents: String?, modified: String?, id: String?, flags: [AnnotationFlags]?, name: String?, rect: RectanglePdf?, pageIndex: Int?, zIndex: Int?, horizontalAlignment: HorizontalAlignment?, verticalAlignment: VerticalAlignment?, creationDate: String?, subject: String?, title: String?, richText: String?, color: Color?, inkList: [[Point]]?, capStyle: CapStyle?) {
        super.init(links: links, contents: contents, modified: modified, id: id, flags: flags, name: name, rect: rect, pageIndex: pageIndex, zIndex: zIndex, horizontalAlignment: horizontalAlignment, verticalAlignment: verticalAlignment, creationDate: creationDate, subject: subject, title: title, richText: richText)
        self.color = color
        self.inkList = inkList
        self.capStyle = capStyle
    }
        
    

    // Encodable protocol methods

    public override func encode(to encoder: Encoder) throws {

        var container = encoder.container(keyedBy: String.self)

        try container.encodeIfPresent(color, forKey: "Color")
        try container.encodeIfPresent(inkList, forKey: "InkList")
        try container.encodeIfPresent(capStyle, forKey: "CapStyle")
        try super.encode(to: encoder)
    }

    // Decodable protocol methods

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: String.self)

        color = try container.decodeIfPresent(Color.self, forKey: "Color")
        inkList = try container.decodeIfPresent([[Point]].self, forKey: "InkList")
        capStyle = try container.decodeIfPresent(CapStyle.self, forKey: "CapStyle")
        try super.init(from: decoder)
    }
}

