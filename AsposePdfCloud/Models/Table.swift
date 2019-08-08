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


/** Represents a table that can be added to the page. */

open class Table: LinkElement {

    /** Gets HorizontalAlignment of the table alignment. */
    public var alignment: HorizontalAlignment?
    /** Gets HorizontalAlignment of the table alignment. */
    public var horizontalAlignment: HorizontalAlignment?
    /** Gets VerticalAlignment of the annotation. */
    public var verticalAlignment: VerticalAlignment?
    /** Gets or sets the table top coordinate. */
    public var top: Double?
    /** Gets or sets the table left coordinate. */
    public var _left: Double?
    /** Gets or sets the default cell text state. */
    public var defaultCellTextState: TextState?
    /** Gets or sets the default cell padding. */
    public var defaultCellPadding: MarginInfo?
    /** Gets or sets the border. */
    public var border: BorderInfo?
    /** Sets the rows of the table. */
    public var rows: [Row]
    /** Gets default cell border; */
    public var defaultColumnWidth: String?
    /** Gets default cell border; */
    public var defaultCellBorder: BorderInfo?
    /** Gets or sets table vertial broken; */
    public var broken: TableBroken?
    /** Gets the column widths of the table. */
    public var columnWidths: String?
    /** Gets the first rows count repeated for several pages */
    public var repeatingRowsCount: Int?
    /** Gets or sets the maximum columns count for table */
    public var repeatingColumnsCount: Int?
    /** Gets the style for repeating rows */
    public var repeatingRowsStyle: TextState?
    /** Gets or sets the styles of the border corners */
    public var cornerStyle: BorderCornerStyle?
    /** Gets or sets break text for table */
    public var breakText: TextRect?
    /** Gets or sets table background color */
    public var backgroundColor: Color?
    /** Gets or sets border included in column widhts. */
    public var isBordersIncluded: Bool?
    /** Gets or sets the table column adjustment. */
    public var columnAdjustment: ColumnAdjustment?
    /** Gets ZIndex of the annotation. */
    public var zIndex: Int?

    
    public init(links: [Link]?, alignment: HorizontalAlignment?, horizontalAlignment: HorizontalAlignment?, verticalAlignment: VerticalAlignment?, top: Double?, _left: Double?, defaultCellTextState: TextState?, defaultCellPadding: MarginInfo?, border: BorderInfo?, rows: [Row], defaultColumnWidth: String?, defaultCellBorder: BorderInfo?, broken: TableBroken?, columnWidths: String?, repeatingRowsCount: Int?, repeatingColumnsCount: Int?, repeatingRowsStyle: TextState?, cornerStyle: BorderCornerStyle?, breakText: TextRect?, backgroundColor: Color?, isBordersIncluded: Bool?, columnAdjustment: ColumnAdjustment?, zIndex: Int?) {
        super.init(links: links)
        self.alignment = alignment
        self.horizontalAlignment = horizontalAlignment
        self.verticalAlignment = verticalAlignment
        self.top = top
        self._left = _left
        self.defaultCellTextState = defaultCellTextState
        self.defaultCellPadding = defaultCellPadding
        self.border = border
        self.rows = rows
        self.defaultColumnWidth = defaultColumnWidth
        self.defaultCellBorder = defaultCellBorder
        self.broken = broken
        self.columnWidths = columnWidths
        self.repeatingRowsCount = repeatingRowsCount
        self.repeatingColumnsCount = repeatingColumnsCount
        self.repeatingRowsStyle = repeatingRowsStyle
        self.cornerStyle = cornerStyle
        self.breakText = breakText
        self.backgroundColor = backgroundColor
        self.isBordersIncluded = isBordersIncluded
        self.columnAdjustment = columnAdjustment
        self.zIndex = zIndex
    }
        
    

    // Encodable protocol methods

    public override func encode(to encoder: Encoder) throws {

        var container = encoder.container(keyedBy: String.self)

        try container.encodeIfPresent(alignment, forKey: "Alignment")
        try container.encodeIfPresent(horizontalAlignment, forKey: "HorizontalAlignment")
        try container.encodeIfPresent(verticalAlignment, forKey: "VerticalAlignment")
        try container.encodeIfPresent(top, forKey: "Top")
        try container.encodeIfPresent(_left, forKey: "Left")
        try container.encodeIfPresent(defaultCellTextState, forKey: "DefaultCellTextState")
        try container.encodeIfPresent(defaultCellPadding, forKey: "DefaultCellPadding")
        try container.encodeIfPresent(border, forKey: "Border")
        try container.encode(rows, forKey: "Rows")
        try container.encodeIfPresent(defaultColumnWidth, forKey: "DefaultColumnWidth")
        try container.encodeIfPresent(defaultCellBorder, forKey: "DefaultCellBorder")
        try container.encodeIfPresent(broken, forKey: "Broken")
        try container.encodeIfPresent(columnWidths, forKey: "ColumnWidths")
        try container.encodeIfPresent(repeatingRowsCount, forKey: "RepeatingRowsCount")
        try container.encodeIfPresent(repeatingColumnsCount, forKey: "RepeatingColumnsCount")
        try container.encodeIfPresent(repeatingRowsStyle, forKey: "RepeatingRowsStyle")
        try container.encodeIfPresent(cornerStyle, forKey: "CornerStyle")
        try container.encodeIfPresent(breakText, forKey: "BreakText")
        try container.encodeIfPresent(backgroundColor, forKey: "BackgroundColor")
        try container.encodeIfPresent(isBordersIncluded, forKey: "IsBordersIncluded")
        try container.encodeIfPresent(columnAdjustment, forKey: "ColumnAdjustment")
        try container.encodeIfPresent(zIndex, forKey: "ZIndex")
        try super.encode(to: encoder)
    }

    // Decodable protocol methods

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: String.self)

        alignment = try container.decodeIfPresent(HorizontalAlignment.self, forKey: "Alignment")
        horizontalAlignment = try container.decodeIfPresent(HorizontalAlignment.self, forKey: "HorizontalAlignment")
        verticalAlignment = try container.decodeIfPresent(VerticalAlignment.self, forKey: "VerticalAlignment")
        top = try container.decodeIfPresent(Double.self, forKey: "Top")
        _left = try container.decodeIfPresent(Double.self, forKey: "Left")
        defaultCellTextState = try container.decodeIfPresent(TextState.self, forKey: "DefaultCellTextState")
        defaultCellPadding = try container.decodeIfPresent(MarginInfo.self, forKey: "DefaultCellPadding")
        border = try container.decodeIfPresent(BorderInfo.self, forKey: "Border")
        rows = try container.decode([Row].self, forKey: "Rows")
        defaultColumnWidth = try container.decodeIfPresent(String.self, forKey: "DefaultColumnWidth")
        defaultCellBorder = try container.decodeIfPresent(BorderInfo.self, forKey: "DefaultCellBorder")
        broken = try container.decodeIfPresent(TableBroken.self, forKey: "Broken")
        columnWidths = try container.decodeIfPresent(String.self, forKey: "ColumnWidths")
        repeatingRowsCount = try container.decodeIfPresent(Int.self, forKey: "RepeatingRowsCount")
        repeatingColumnsCount = try container.decodeIfPresent(Int.self, forKey: "RepeatingColumnsCount")
        repeatingRowsStyle = try container.decodeIfPresent(TextState.self, forKey: "RepeatingRowsStyle")
        cornerStyle = try container.decodeIfPresent(BorderCornerStyle.self, forKey: "CornerStyle")
        breakText = try container.decodeIfPresent(TextRect.self, forKey: "BreakText")
        backgroundColor = try container.decodeIfPresent(Color.self, forKey: "BackgroundColor")
        isBordersIncluded = try container.decodeIfPresent(Bool.self, forKey: "IsBordersIncluded")
        columnAdjustment = try container.decodeIfPresent(ColumnAdjustment.self, forKey: "ColumnAdjustment")
        zIndex = try container.decodeIfPresent(Int.self, forKey: "ZIndex")
        try super.init(from: decoder)
    }
}

