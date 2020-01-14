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


/** Provides CheckBoxField. */

open class CheckBoxField: FormField {

    /** Returns list of allowed states. */
    public var allowedStates: [String]?
    /** Gets or sets style of check box. */
    public var style: BoxStyle?
    /** Gets or sets current annotation appearance state. */
    public var activeState: String?
    /** Gets or sets state of check box. */
    public var checked: Bool
    /** Gets or sets export value of CheckBox field. */
    public var exportValue: String?

    
    public init(links: [Link]?, partialName: String?, rect: Rectangle?, value: String?, pageIndex: Int, height: Double?, width: Double?, zIndex: Int?, isGroup: Bool, parent: FormField?, isSharedField: Bool?, flags: [AnnotationFlags]?, color: Color?, contents: String?, margin: MarginInfo?, highlighting: LinkHighlightingMode?, horizontalAlignment: HorizontalAlignment?, verticalAlignment: VerticalAlignment?, allowedStates: [String]?, style: BoxStyle?, activeState: String?, checked: Bool, exportValue: String?) {
        self.checked = checked
        super.init(links: links, partialName: partialName, rect: rect, value: value, pageIndex: pageIndex, height: height, width: width, zIndex: zIndex, isGroup: isGroup, parent: parent, isSharedField: isSharedField, flags: flags, color: color, contents: contents, margin: margin, highlighting: highlighting, horizontalAlignment: horizontalAlignment, verticalAlignment: verticalAlignment)
        self.allowedStates = allowedStates
        self.style = style
        self.activeState = activeState
        self.exportValue = exportValue
    }
        
    

    // Encodable protocol methods

    public override func encode(to encoder: Encoder) throws {

        var container = encoder.container(keyedBy: String.self)

        try container.encodeIfPresent(allowedStates, forKey: "AllowedStates")
        try container.encodeIfPresent(style, forKey: "Style")
        try container.encodeIfPresent(activeState, forKey: "ActiveState")
        try container.encode(checked, forKey: "Checked")
        try container.encodeIfPresent(exportValue, forKey: "ExportValue")
        try super.encode(to: encoder)
    }

    // Decodable protocol methods

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: String.self)

        allowedStates = try container.decodeIfPresent([String].self, forKey: "AllowedStates")
        style = try container.decodeIfPresent(BoxStyle.self, forKey: "Style")
        activeState = try container.decodeIfPresent(String.self, forKey: "ActiveState")
        checked = try container.decode(Bool.self, forKey: "Checked")
        exportValue = try container.decodeIfPresent(String.self, forKey: "ExportValue")
        try super.init(from: decoder)
    }
}

