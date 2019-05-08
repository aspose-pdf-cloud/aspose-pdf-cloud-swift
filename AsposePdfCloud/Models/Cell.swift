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


/** Represents a cell of the table&#39;s row. */

open class Cell: Codable {

    /** Gets or sets the cell have border. */
    public var isNoBorder: Bool?
    /** Gets or sets the padding. */
    public var margin: MarginInfo?
    /** Gets or sets the border. */
    public var border: BorderInfo?
    /** Gets or sets the background color. */
    public var backgroundColor: Color?
    /** Gets or sets the background image file. */
    public var backgroundImageFile: String?
    /** Gets or sets the alignment. */
    public var alignment: HorizontalAlignment?
    /** Gets or sets the default cell text state. */
    public var defaultCellTextState: TextState?
    /** Gets or sets the cell&#39;s formatted text. */
    public var paragraphs: [TextRect]?
    /** Gets or sets the cell&#39;s text word wrapped. */
    public var isWordWrapped: Bool?
    /** Gets or sets the vertical alignment. */
    public var verticalAlignment: VerticalAlignment?
    /** Gets or sets the column span. */
    public var colSpan: Int?
    /** Gets or sets the row span. */
    public var rowSpan: Int?
    /** Gets or sets the column width. */
    public var width: Double?

        
    
    public init(isNoBorder: Bool?, margin: MarginInfo?, border: BorderInfo?, backgroundColor: Color?, backgroundImageFile: String?, alignment: HorizontalAlignment?, defaultCellTextState: TextState?, paragraphs: [TextRect]?, isWordWrapped: Bool?, verticalAlignment: VerticalAlignment?, colSpan: Int?, rowSpan: Int?, width: Double?) {
        self.isNoBorder = isNoBorder
        self.margin = margin
        self.border = border
        self.backgroundColor = backgroundColor
        self.backgroundImageFile = backgroundImageFile
        self.alignment = alignment
        self.defaultCellTextState = defaultCellTextState
        self.paragraphs = paragraphs
        self.isWordWrapped = isWordWrapped
        self.verticalAlignment = verticalAlignment
        self.colSpan = colSpan
        self.rowSpan = rowSpan
        self.width = width
    }
    

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {

        var container = encoder.container(keyedBy: String.self)

        try container.encodeIfPresent(isNoBorder, forKey: "IsNoBorder")
        try container.encodeIfPresent(margin, forKey: "Margin")
        try container.encodeIfPresent(border, forKey: "Border")
        try container.encodeIfPresent(backgroundColor, forKey: "BackgroundColor")
        try container.encodeIfPresent(backgroundImageFile, forKey: "BackgroundImageFile")
        try container.encodeIfPresent(alignment, forKey: "Alignment")
        try container.encodeIfPresent(defaultCellTextState, forKey: "DefaultCellTextState")
        try container.encodeIfPresent(paragraphs, forKey: "Paragraphs")
        try container.encodeIfPresent(isWordWrapped, forKey: "IsWordWrapped")
        try container.encodeIfPresent(verticalAlignment, forKey: "VerticalAlignment")
        try container.encodeIfPresent(colSpan, forKey: "ColSpan")
        try container.encodeIfPresent(rowSpan, forKey: "RowSpan")
        try container.encodeIfPresent(width, forKey: "Width")
    }

    // Decodable protocol methods

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: String.self)

        isNoBorder = try container.decodeIfPresent(Bool.self, forKey: "IsNoBorder")
        margin = try container.decodeIfPresent(MarginInfo.self, forKey: "Margin")
        border = try container.decodeIfPresent(BorderInfo.self, forKey: "Border")
        backgroundColor = try container.decodeIfPresent(Color.self, forKey: "BackgroundColor")
        backgroundImageFile = try container.decodeIfPresent(String.self, forKey: "BackgroundImageFile")
        alignment = try container.decodeIfPresent(HorizontalAlignment.self, forKey: "Alignment")
        defaultCellTextState = try container.decodeIfPresent(TextState.self, forKey: "DefaultCellTextState")
        paragraphs = try container.decodeIfPresent([TextRect].self, forKey: "Paragraphs")
        isWordWrapped = try container.decodeIfPresent(Bool.self, forKey: "IsWordWrapped")
        verticalAlignment = try container.decodeIfPresent(VerticalAlignment.self, forKey: "VerticalAlignment")
        colSpan = try container.decodeIfPresent(Int.self, forKey: "ColSpan")
        rowSpan = try container.decodeIfPresent(Int.self, forKey: "RowSpan")
        width = try container.decodeIfPresent(Double.self, forKey: "Width")
    }
}

