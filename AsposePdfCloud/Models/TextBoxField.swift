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


/** Provides TextBoxField. */

open class TextBoxField: FormField {

    /** Gets or sets multiline flag of the field. If Multiline is true field can contain multiple lines of text. */
    public var multiline: Bool?
    /** Gets or sets spellcheck flag for field. If true field shall be spell checked. */
    public var spellCheck: Bool?
    /** Gets or sets scrollable flag of field. If true field can be scrolled. */
    public var scrollable: Bool?
    /** Gets or sets flag which indicates is field divided into spaced positions. */
    public var forceCombs: Bool?
    /** Gets or sets maximum length of text in the field. */
    public var maxLen: Int?
    /** Adds barcode 128 into the field. Field value will be changed onto the code and field become read only. */
    public var barcode: String?

    
    public init(links: [Link]?, partialName: String?, rect: Rectangle?, value: String?, pageIndex: Int, height: Double?, width: Double?, zIndex: Int?, isGroup: Bool?, parent: FormField?, isSharedField: Bool?, flags: [AnnotationFlags]?, color: Color?, contents: String?, margin: MarginInfo?, highlighting: LinkHighlightingMode?, horizontalAlignment: HorizontalAlignment?, verticalAlignment: VerticalAlignment?, border: Border?, multiline: Bool?, spellCheck: Bool?, scrollable: Bool?, forceCombs: Bool?, maxLen: Int?, barcode: String?) {
        super.init(links: links)
        self.multiline = multiline
        self.spellCheck = spellCheck
        self.scrollable = scrollable
        self.forceCombs = forceCombs
        self.maxLen = maxLen
        self.barcode = barcode
    }
        
    

    // Encodable protocol methods

    public override func encode(to encoder: Encoder) throws {

        var container = encoder.container(keyedBy: String.self)

        try container.encodeIfPresent(multiline, forKey: "Multiline")
        try container.encodeIfPresent(spellCheck, forKey: "SpellCheck")
        try container.encodeIfPresent(scrollable, forKey: "Scrollable")
        try container.encodeIfPresent(forceCombs, forKey: "ForceCombs")
        try container.encodeIfPresent(maxLen, forKey: "MaxLen")
        try container.encodeIfPresent(barcode, forKey: "Barcode")
        try super.encode(to: encoder)
    }

    // Decodable protocol methods

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: String.self)

        multiline = try container.decodeIfPresent(Bool.self, forKey: "Multiline")
        spellCheck = try container.decodeIfPresent(Bool.self, forKey: "SpellCheck")
        scrollable = try container.decodeIfPresent(Bool.self, forKey: "Scrollable")
        forceCombs = try container.decodeIfPresent(Bool.self, forKey: "ForceCombs")
        maxLen = try container.decodeIfPresent(Int.self, forKey: "MaxLen")
        barcode = try container.decodeIfPresent(String.self, forKey: "Barcode")
        try super.init(from: decoder)
    }
}

