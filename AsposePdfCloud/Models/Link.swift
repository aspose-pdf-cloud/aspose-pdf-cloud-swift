/**
 *
 *   Copyright (c) 2018 Aspose.PDF Cloud
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


/** Provides information for the object link. This is supposed to be an atom:link, therefore it should have all attributes specified here http://tools.ietf.org/html/rfc4287#section-4.2.7 */

open class Link: Codable {

    /** The \&quot;href\&quot; attribute contains the link&#39;s IRI. atom:link elements MUST have an href attribute, whose value MUST be a IRI reference */
    public var href: String?
    /** atom:link elements MAY have a \&quot;rel\&quot; attribute that indicates the link relation type.  If the \&quot;rel\&quot; attribute is not present, the link element MUST be interpreted as if the link relation type is \&quot;alternate\&quot;. */
    public var rel: String?
    /** On the link element, the \&quot;type\&quot; attribute&#39;s value is an advisory media type: it is a hint about the type of the representation that is expected to be returned when the value of the href attribute is dereferenced.  Note that the type attribute does not override the actual media type returned with the representation. */
    public var type: String?
    /** The \&quot;title\&quot; attribute conveys human-readable information about the link.  The content of the \&quot;title\&quot; attribute is Language-Sensitive. */
    public var title: String?

        
    
    public init(href: String?, rel: String?, type: String?, title: String?) {
        self.href = href
        self.rel = rel
        self.type = type
        self.title = title
    }
    

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {

        var container = encoder.container(keyedBy: String.self)

        try container.encodeIfPresent(href, forKey: "Href")
        try container.encodeIfPresent(rel, forKey: "Rel")
        try container.encodeIfPresent(type, forKey: "Type")
        try container.encodeIfPresent(title, forKey: "Title")
    }

    // Decodable protocol methods

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: String.self)

        href = try container.decodeIfPresent(String.self, forKey: "Href")
        rel = try container.decodeIfPresent(String.self, forKey: "Rel")
        type = try container.decodeIfPresent(String.self, forKey: "Type")
        title = try container.decodeIfPresent(String.self, forKey: "Title")
    }
}

