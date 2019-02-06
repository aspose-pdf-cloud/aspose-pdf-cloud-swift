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


/** Provides annotation. */

open class Annotation: LinkElement {

    /** Color of the annotation. */
    public var color: Color?
    /** Get the annotation content. */
    public var contents: String?
    /** The date and time when the annotation was last modified. */
    public var modified: String?
    /** Gets ID of the annotation. */
    public var id: String?
    /** Gets Flags of the annotation. */
    public var flags: [AnnotationFlags]?
    /** Gets Name of the annotation. */
    public var name: String?
    /** Gets Rect of the annotation. */
    public var rect: Rectangle?
    /** Gets PageIndex of the annotation. */
    public var pageIndex: Int?
    /** Gets ZIndex of the annotation. */
    public var zIndex: Int?
    /** Gets HorizontalAlignment of the annotation. */
    public var horizontalAlignment: HorizontalAlignment?
    /** Gets VerticalAlignment of the annotation. */
    public var verticalAlignment: VerticalAlignment?

    
    public init(links: [Link]?, color: Color?, contents: String?, modified: String?, id: String?, flags: [AnnotationFlags]?, name: String?, rect: Rectangle?, pageIndex: Int?, zIndex: Int?, horizontalAlignment: HorizontalAlignment?, verticalAlignment: VerticalAlignment?) {
        super.init(links: links)
        self.color = color
        self.contents = contents
        self.modified = modified
        self.id = id
        self.flags = flags
        self.name = name
        self.rect = rect
        self.pageIndex = pageIndex
        self.zIndex = zIndex
        self.horizontalAlignment = horizontalAlignment
        self.verticalAlignment = verticalAlignment
    }
        
    

    // Encodable protocol methods

    public override func encode(to encoder: Encoder) throws {

        var container = encoder.container(keyedBy: String.self)

        try container.encodeIfPresent(color, forKey: "Color")
        try container.encodeIfPresent(contents, forKey: "Contents")
        try container.encodeIfPresent(modified, forKey: "Modified")
        try container.encodeIfPresent(id, forKey: "Id")
        try container.encodeIfPresent(flags, forKey: "Flags")
        try container.encodeIfPresent(name, forKey: "Name")
        try container.encodeIfPresent(rect, forKey: "Rect")
        try container.encodeIfPresent(pageIndex, forKey: "PageIndex")
        try container.encodeIfPresent(zIndex, forKey: "ZIndex")
        try container.encodeIfPresent(horizontalAlignment, forKey: "HorizontalAlignment")
        try container.encodeIfPresent(verticalAlignment, forKey: "VerticalAlignment")
        try super.encode(to: encoder)
    }

    // Decodable protocol methods

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: String.self)

        color = try container.decodeIfPresent(Color.self, forKey: "Color")
        contents = try container.decodeIfPresent(String.self, forKey: "Contents")
        modified = try container.decodeIfPresent(String.self, forKey: "Modified")
        id = try container.decodeIfPresent(String.self, forKey: "Id")
        flags = try container.decodeIfPresent([AnnotationFlags].self, forKey: "Flags")
        name = try container.decodeIfPresent(String.self, forKey: "Name")
        rect = try container.decodeIfPresent(Rectangle.self, forKey: "Rect")
        pageIndex = try container.decodeIfPresent(Int.self, forKey: "PageIndex")
        zIndex = try container.decodeIfPresent(Int.self, forKey: "ZIndex")
        horizontalAlignment = try container.decodeIfPresent(HorizontalAlignment.self, forKey: "HorizontalAlignment")
        verticalAlignment = try container.decodeIfPresent(VerticalAlignment.self, forKey: "VerticalAlignment")
        try super.init(from: decoder)
    }
}

