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


/** Provides link to DocumentConfig. */

open class DocumentConfig: Codable {

    /** Sets DisplayProperties of document */
    public var displayProperties: DisplayProperties?
    /** Sets DocumentProperties of document */
    public var documentProperties: DocumentProperties?
    /** Sets count of pages for new document. From 1 to 100 */
    public var pagesCount: Int
    /** Sets default page config for new document */
    public var defaultPageConfig: DefaultPageConfig?

        
    
    public init(displayProperties: DisplayProperties?, documentProperties: DocumentProperties?, pagesCount: Int, defaultPageConfig: DefaultPageConfig?) {
        self.displayProperties = displayProperties
        self.documentProperties = documentProperties
        self.pagesCount = pagesCount
        self.defaultPageConfig = defaultPageConfig
    }
    

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {

        var container = encoder.container(keyedBy: String.self)

        try container.encodeIfPresent(displayProperties, forKey: "DisplayProperties")
        try container.encodeIfPresent(documentProperties, forKey: "DocumentProperties")
        try container.encode(pagesCount, forKey: "PagesCount")
        try container.encodeIfPresent(defaultPageConfig, forKey: "DefaultPageConfig")
    }

    // Decodable protocol methods

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: String.self)

        displayProperties = try container.decodeIfPresent(DisplayProperties.self, forKey: "DisplayProperties")
        documentProperties = try container.decodeIfPresent(DocumentProperties.self, forKey: "DocumentProperties")
        pagesCount = try container.decode(Int.self, forKey: "PagesCount")
        defaultPageConfig = try container.decodeIfPresent(DefaultPageConfig.self, forKey: "DefaultPageConfig")
    }
}

