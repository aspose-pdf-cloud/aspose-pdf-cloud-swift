/**
 *
 *   Copyright (c) 2018 Aspose.Pdf for Cloud
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


/** Represents the privileges for accessing Pdf file./&gt;. */

open class DocumentPrivilege: Codable {

    /** Sets the permission which allow print or not.  true is allow and false or not set is forbidden. */
    public var allowPrint: Bool?
    /** Sets the permission which allow degraded printing or not.  true is allow and false or not set is forbidden. */
    public var allowDegradedPrinting: Bool?
    /** Sets the permission which allow modify contents or not.  true is allow and false or not set is forbidden. */
    public var allowModifyContents: Bool?
    /** Sets the permission which allow copy or not.  true is allow and false or not set is forbidden. */
    public var allowCopy: Bool?
    /** Sets the permission which allow modify annotations or not.  true is allow and false or not set is forbidden. */
    public var allowModifyAnnotations: Bool?
    /** Sets the permission which allow fill in forms or not.  true is allow and false or not set is forbidden. */
    public var allowFillIn: Bool?
    /** Sets the permission which allow screen readers or not.  true is allow and false or not set is forbidden. */
    public var allowScreenReaders: Bool?
    /** Sets the permission which allow assembly or not.  true is allow and false or not set is forbidden. */
    public var allowAssembly: Bool?
    /** Sets the print level of  document&#39;s privilege. Just as the Adobe Professional&#39;s Printing Allowed settings. 0: None. 1: Low Resolution (150 dpi). 2: High Resolution. */
    public var printAllowLevel: Int?
    /** Sets the change level of  document&#39;s privilege. Just as the Adobe Professional&#39;s Changes Allowed settings. 0: None. 1: Inserting, Deleting and Rotating pages. 2: Filling in form fields and signing existing signature fields. 3: Commenting, filling in form fields, and signing existing signature fields. 4: Any except extracting pages. */
    public var changeAllowLevel: Int?
    /** Sets the copy level of  document&#39;s privilege. Just as the Adobe Professional&#39;s permission settings. 0: None. 1: Enable text access for screen reader devices for the visually impaired. 2: Enable copying of text, images and other content. */
    public var copyAllowLevel: Int?


    
    public init(allowPrint: Bool?, allowDegradedPrinting: Bool?, allowModifyContents: Bool?, allowCopy: Bool?, allowModifyAnnotations: Bool?, allowFillIn: Bool?, allowScreenReaders: Bool?, allowAssembly: Bool?, printAllowLevel: Int?, changeAllowLevel: Int?, copyAllowLevel: Int?) {
        self.allowPrint = allowPrint
        self.allowDegradedPrinting = allowDegradedPrinting
        self.allowModifyContents = allowModifyContents
        self.allowCopy = allowCopy
        self.allowModifyAnnotations = allowModifyAnnotations
        self.allowFillIn = allowFillIn
        self.allowScreenReaders = allowScreenReaders
        self.allowAssembly = allowAssembly
        self.printAllowLevel = printAllowLevel
        self.changeAllowLevel = changeAllowLevel
        self.copyAllowLevel = copyAllowLevel
    }
    

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {

        var container = encoder.container(keyedBy: String.self)

        try container.encodeIfPresent(allowPrint, forKey: "AllowPrint")
        try container.encodeIfPresent(allowDegradedPrinting, forKey: "AllowDegradedPrinting")
        try container.encodeIfPresent(allowModifyContents, forKey: "AllowModifyContents")
        try container.encodeIfPresent(allowCopy, forKey: "AllowCopy")
        try container.encodeIfPresent(allowModifyAnnotations, forKey: "AllowModifyAnnotations")
        try container.encodeIfPresent(allowFillIn, forKey: "AllowFillIn")
        try container.encodeIfPresent(allowScreenReaders, forKey: "AllowScreenReaders")
        try container.encodeIfPresent(allowAssembly, forKey: "AllowAssembly")
        try container.encodeIfPresent(printAllowLevel, forKey: "PrintAllowLevel")
        try container.encodeIfPresent(changeAllowLevel, forKey: "ChangeAllowLevel")
        try container.encodeIfPresent(copyAllowLevel, forKey: "CopyAllowLevel")
    }

    // Decodable protocol methods

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: String.self)

        allowPrint = try container.decodeIfPresent(Bool.self, forKey: "AllowPrint")
        allowDegradedPrinting = try container.decodeIfPresent(Bool.self, forKey: "AllowDegradedPrinting")
        allowModifyContents = try container.decodeIfPresent(Bool.self, forKey: "AllowModifyContents")
        allowCopy = try container.decodeIfPresent(Bool.self, forKey: "AllowCopy")
        allowModifyAnnotations = try container.decodeIfPresent(Bool.self, forKey: "AllowModifyAnnotations")
        allowFillIn = try container.decodeIfPresent(Bool.self, forKey: "AllowFillIn")
        allowScreenReaders = try container.decodeIfPresent(Bool.self, forKey: "AllowScreenReaders")
        allowAssembly = try container.decodeIfPresent(Bool.self, forKey: "AllowAssembly")
        printAllowLevel = try container.decodeIfPresent(Int.self, forKey: "PrintAllowLevel")
        changeAllowLevel = try container.decodeIfPresent(Int.self, forKey: "ChangeAllowLevel")
        copyAllowLevel = try container.decodeIfPresent(Int.self, forKey: "CopyAllowLevel")
    }
}

