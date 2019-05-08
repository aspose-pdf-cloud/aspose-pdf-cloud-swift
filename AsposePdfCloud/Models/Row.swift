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


/** Represents a row of the table. */

open class Row: Codable {

    /** Gets or sets the background color. */
    public var backgroundColor: Color?
    /** Gets or sets the border. */
    public var border: BorderInfo?
    /** Sets the cells of the row. */
    public var cells: [Cell]
    /** Gets default cell border; */
    public var defaultCellBorder: BorderInfo?
    /** Gets height for row; */
    public var minRowHeight: Double?
    /** Gets fixed row height - row may have fixed height; */
    public var fixedRowHeight: Double?
    /** Gets fixed row is in new page - page with this property should be printed to next page Default false; */
    public var isInNewPage: Bool?
    /** Gets is row can be broken between two pages */
    public var isRowBroken: Bool?
    /** Gets or sets default text state for row cells */
    public var defaultCellTextState: TextState?
    /** Gets or sets default margin for row cells */
    public var defaultCellPadding: MarginInfo?
    /** Gets or sets the vertical alignment. */
    public var verticalAlignment: VerticalAlignment?

        
    
    public init(backgroundColor: Color?, border: BorderInfo?, cells: [Cell], defaultCellBorder: BorderInfo?, minRowHeight: Double?, fixedRowHeight: Double?, isInNewPage: Bool?, isRowBroken: Bool?, defaultCellTextState: TextState?, defaultCellPadding: MarginInfo?, verticalAlignment: VerticalAlignment?) {
        self.backgroundColor = backgroundColor
        self.border = border
        self.cells = cells
        self.defaultCellBorder = defaultCellBorder
        self.minRowHeight = minRowHeight
        self.fixedRowHeight = fixedRowHeight
        self.isInNewPage = isInNewPage
        self.isRowBroken = isRowBroken
        self.defaultCellTextState = defaultCellTextState
        self.defaultCellPadding = defaultCellPadding
        self.verticalAlignment = verticalAlignment
    }
    

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {

        var container = encoder.container(keyedBy: String.self)

        try container.encodeIfPresent(backgroundColor, forKey: "BackgroundColor")
        try container.encodeIfPresent(border, forKey: "Border")
        try container.encode(cells, forKey: "Cells")
        try container.encodeIfPresent(defaultCellBorder, forKey: "DefaultCellBorder")
        try container.encodeIfPresent(minRowHeight, forKey: "MinRowHeight")
        try container.encodeIfPresent(fixedRowHeight, forKey: "FixedRowHeight")
        try container.encodeIfPresent(isInNewPage, forKey: "IsInNewPage")
        try container.encodeIfPresent(isRowBroken, forKey: "IsRowBroken")
        try container.encodeIfPresent(defaultCellTextState, forKey: "DefaultCellTextState")
        try container.encodeIfPresent(defaultCellPadding, forKey: "DefaultCellPadding")
        try container.encodeIfPresent(verticalAlignment, forKey: "VerticalAlignment")
    }

    // Decodable protocol methods

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: String.self)

        backgroundColor = try container.decodeIfPresent(Color.self, forKey: "BackgroundColor")
        border = try container.decodeIfPresent(BorderInfo.self, forKey: "Border")
        cells = try container.decode([Cell].self, forKey: "Cells")
        defaultCellBorder = try container.decodeIfPresent(BorderInfo.self, forKey: "DefaultCellBorder")
        minRowHeight = try container.decodeIfPresent(Double.self, forKey: "MinRowHeight")
        fixedRowHeight = try container.decodeIfPresent(Double.self, forKey: "FixedRowHeight")
        isInNewPage = try container.decodeIfPresent(Bool.self, forKey: "IsInNewPage")
        isRowBroken = try container.decodeIfPresent(Bool.self, forKey: "IsRowBroken")
        defaultCellTextState = try container.decodeIfPresent(TextState.self, forKey: "DefaultCellTextState")
        defaultCellPadding = try container.decodeIfPresent(MarginInfo.self, forKey: "DefaultCellPadding")
        verticalAlignment = try container.decodeIfPresent(VerticalAlignment.self, forKey: "VerticalAlignment")
    }
}

