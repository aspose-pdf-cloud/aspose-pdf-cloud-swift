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


/** Provides ComboBoxField. */

open class ComboBoxField: ChoiceField {

    /** Gets collection of options of the combobox. */
    public var options: [Option]?
    /** Gets or sets current annotation appearance state. */
    public var activeState: String?
    /** Gets or sets editable status of the field. */
    public var editable: Bool?
    /** Gets or sets spellchaeck activiity status. */
    public var spellCheck: Bool?
    /** Gets or sets index of selected item. Numbering of items is started from 1. */
    public var selected: Int

    
    public init(links: [Link]?, partialName: String?, rect: Rectangle?, value: String?, pageIndex: Int, height: Double?, width: Double?, zIndex: Int?, isGroup: Bool, parent: FormField?, isSharedField: Bool?, flags: [AnnotationFlags]?, color: Color?, contents: String?, margin: MarginInfo?, highlighting: LinkHighlightingMode?, horizontalAlignment: HorizontalAlignment?, verticalAlignment: VerticalAlignment?, multiSelect: Bool?, options: [Option]?, activeState: String?, editable: Bool?, spellCheck: Bool?, selected: Int) {
        self.selected = selected
        super.init(links: links, partialName: partialName, rect: rect, value: value, pageIndex: pageIndex, height: height, width: width, zIndex: zIndex, isGroup: isGroup, parent: parent, isSharedField: isSharedField, flags: flags, color: color, contents: contents, margin: margin, highlighting: highlighting, horizontalAlignment: horizontalAlignment, verticalAlignment: verticalAlignment, multiSelect: multiSelect)
        self.options = options
        self.activeState = activeState
        self.editable = editable
        self.spellCheck = spellCheck
    }
        
    

    // Encodable protocol methods

    public override func encode(to encoder: Encoder) throws {

        var container = encoder.container(keyedBy: String.self)

        try container.encodeIfPresent(options, forKey: "Options")
        try container.encodeIfPresent(activeState, forKey: "ActiveState")
        try container.encodeIfPresent(editable, forKey: "Editable")
        try container.encodeIfPresent(spellCheck, forKey: "SpellCheck")
        try container.encode(selected, forKey: "Selected")
        try super.encode(to: encoder)
    }

    // Decodable protocol methods

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: String.self)

        options = try container.decodeIfPresent([Option].self, forKey: "Options")
        activeState = try container.decodeIfPresent(String.self, forKey: "ActiveState")
        editable = try container.decodeIfPresent(Bool.self, forKey: "Editable")
        spellCheck = try container.decodeIfPresent(Bool.self, forKey: "SpellCheck")
        selected = try container.decode(Int.self, forKey: "Selected")
        try super.init(from: decoder)
    }
}

