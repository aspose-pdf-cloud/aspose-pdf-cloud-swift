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


/** Represents document DTO. */

open class Document: LinkElement {

    /** Document properties. */
    public var documentProperties: DocumentProperties?
    /** Document display properties. */
    public var displayProperties: DisplayProperties?
    /** Document pages. */
    public var pages: Pages?

    
    public init(links: [Link]?, documentProperties: DocumentProperties?, displayProperties: DisplayProperties?, pages: Pages?) {
        super.init(links: links)
        self.documentProperties = documentProperties
        self.displayProperties = displayProperties
        self.pages = pages
    }
        
    

    // Encodable protocol methods

    public override func encode(to encoder: Encoder) throws {

        var container = encoder.container(keyedBy: String.self)

        try container.encodeIfPresent(documentProperties, forKey: "DocumentProperties")
        try container.encodeIfPresent(displayProperties, forKey: "DisplayProperties")
        try container.encodeIfPresent(pages, forKey: "Pages")
        try super.encode(to: encoder)
    }

    // Decodable protocol methods

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: String.self)

        documentProperties = try container.decodeIfPresent(DocumentProperties.self, forKey: "DocumentProperties")
        displayProperties = try container.decodeIfPresent(DisplayProperties.self, forKey: "DisplayProperties")
        pages = try container.decodeIfPresent(Pages.self, forKey: "Pages")
        try super.init(from: decoder)
    }
}

