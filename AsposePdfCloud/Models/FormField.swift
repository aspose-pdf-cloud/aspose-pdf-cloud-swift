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


/** Provides form field. */

open class FormField: LinkElement {

    /** Field name. */
    public var partialName: String?
    /** Field rectangle. */
    public var rect: Rectangle?
    /** Field value. */
    public var value: String?
    /** Page index. */
    public var pageIndex: Int
    /** Gets or sets height of the field. */
    public var height: Double?
    /** Gets or sets width of the field. */
    public var width: Double?
    /** Z index. */
    public var zIndex: Int?
    /** Is group. */
    public var isGroup: Bool?
    /** Gets field parent. */
    public var parent: FormField?
    /** Property for Generator support. Used when field is added to header or footer. If true, this field will created once and it&#39;s appearance will be visible on all pages of the document. If false, separated field will be created for every document page. */
    public var isSharedField: Bool?
    /** Gets Flags of the field. */
    public var flags: [AnnotationFlags]?
    /** Color of the annotation. */
    public var color: Color?
    /** Get the field content. */
    public var contents: String?
    /** Gets or sets a outer margin for paragraph (for pdf generation) */
    public var margin: MarginInfo?
    /** Field highlighting mode. */
    public var highlighting: LinkHighlightingMode?
    /** Gets HorizontalAlignment of the field. */
    public var horizontalAlignment: HorizontalAlignment?
    /** Gets VerticalAlignment of the field. */
    public var verticalAlignment: VerticalAlignment?
    /** Gets or sets annotation border characteristics. */
    public var border: Border?

    
    public init(links: [Link]?, partialName: String?, rect: Rectangle?, value: String?, pageIndex: Int, height: Double?, width: Double?, zIndex: Int?, isGroup: Bool?, parent: FormField?, isSharedField: Bool?, flags: [AnnotationFlags]?, color: Color?, contents: String?, margin: MarginInfo?, highlighting: LinkHighlightingMode?, horizontalAlignment: HorizontalAlignment?, verticalAlignment: VerticalAlignment?, border: Border?) {
        self.pageIndex = pageIndex
        super.init(links: links)
        self.partialName = partialName
        self.rect = rect
        self.value = value
        self.height = height
        self.width = width
        self.zIndex = zIndex
        self.isGroup = isGroup
        self.parent = parent
        self.isSharedField = isSharedField
        self.flags = flags
        self.color = color
        self.contents = contents
        self.margin = margin
        self.highlighting = highlighting
        self.horizontalAlignment = horizontalAlignment
        self.verticalAlignment = verticalAlignment
        self.border = border
    }
        
    

    // Encodable protocol methods

    public override func encode(to encoder: Encoder) throws {

        var container = encoder.container(keyedBy: String.self)

        try container.encodeIfPresent(partialName, forKey: "PartialName")
        try container.encodeIfPresent(rect, forKey: "Rect")
        try container.encodeIfPresent(value, forKey: "Value")
        try container.encode(pageIndex, forKey: "PageIndex")
        try container.encodeIfPresent(height, forKey: "Height")
        try container.encodeIfPresent(width, forKey: "Width")
        try container.encodeIfPresent(zIndex, forKey: "ZIndex")
        try container.encodeIfPresent(isGroup, forKey: "IsGroup")
        try container.encodeIfPresent(parent, forKey: "Parent")
        try container.encodeIfPresent(isSharedField, forKey: "IsSharedField")
        try container.encodeIfPresent(flags, forKey: "Flags")
        try container.encodeIfPresent(color, forKey: "Color")
        try container.encodeIfPresent(contents, forKey: "Contents")
        try container.encodeIfPresent(margin, forKey: "Margin")
        try container.encodeIfPresent(highlighting, forKey: "Highlighting")
        try container.encodeIfPresent(horizontalAlignment, forKey: "HorizontalAlignment")
        try container.encodeIfPresent(verticalAlignment, forKey: "VerticalAlignment")
        try container.encodeIfPresent(border, forKey: "Border")
        try super.encode(to: encoder)
    }

    // Decodable protocol methods

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: String.self)

        partialName = try container.decodeIfPresent(String.self, forKey: "PartialName")
        rect = try container.decodeIfPresent(Rectangle.self, forKey: "Rect")
        value = try container.decodeIfPresent(String.self, forKey: "Value")
        pageIndex = try container.decode(Int.self, forKey: "PageIndex")
        height = try container.decodeIfPresent(Double.self, forKey: "Height")
        width = try container.decodeIfPresent(Double.self, forKey: "Width")
        zIndex = try container.decodeIfPresent(Int.self, forKey: "ZIndex")
        isGroup = try container.decodeIfPresent(Bool.self, forKey: "IsGroup")
        parent = try container.decodeIfPresent(FormField.self, forKey: "Parent")
        isSharedField = try container.decodeIfPresent(Bool.self, forKey: "IsSharedField")
        flags = try container.decodeIfPresent([AnnotationFlags].self, forKey: "Flags")
        color = try container.decodeIfPresent(Color.self, forKey: "Color")
        contents = try container.decodeIfPresent(String.self, forKey: "Contents")
        margin = try container.decodeIfPresent(MarginInfo.self, forKey: "Margin")
        highlighting = try container.decodeIfPresent(LinkHighlightingMode.self, forKey: "Highlighting")
        horizontalAlignment = try container.decodeIfPresent(HorizontalAlignment.self, forKey: "HorizontalAlignment")
        verticalAlignment = try container.decodeIfPresent(VerticalAlignment.self, forKey: "VerticalAlignment")
        border = try container.decodeIfPresent(Border.self, forKey: "Border")
        try super.init(from: decoder)
    }
}

