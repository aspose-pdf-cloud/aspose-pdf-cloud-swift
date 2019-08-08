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


/** Provides MarkupAnnotation. */

open class MarkupAnnotation: Annotation {

    /** The date and time when the annotation was created. */
    public var creationDate: String?
    /** Get the annotation subject. */
    public var subject: String?
    /** Get the annotation title. */
    public var title: String?
    /** Get the annotation RichText. */
    public var richText: String?

    
    public init(links: [Link]?, color: Color?, contents: String?, modified: String?, id: String?, flags: [AnnotationFlags]?, name: String?, rect: Rectangle, pageIndex: Int?, zIndex: Int?, horizontalAlignment: HorizontalAlignment?, verticalAlignment: VerticalAlignment?, creationDate: String?, subject: String?, title: String?, richText: String?) {
        super.init(links: links)
        self.creationDate = creationDate
        self.subject = subject
        self.title = title
        self.richText = richText
    }
        
    

    // Encodable protocol methods

    public override func encode(to encoder: Encoder) throws {

        var container = encoder.container(keyedBy: String.self)

        try container.encodeIfPresent(creationDate, forKey: "CreationDate")
        try container.encodeIfPresent(subject, forKey: "Subject")
        try container.encodeIfPresent(title, forKey: "Title")
        try container.encodeIfPresent(richText, forKey: "RichText")
        try super.encode(to: encoder)
    }

    // Decodable protocol methods

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: String.self)

        creationDate = try container.decodeIfPresent(String.self, forKey: "CreationDate")
        subject = try container.decodeIfPresent(String.self, forKey: "Subject")
        title = try container.decodeIfPresent(String.self, forKey: "Title")
        richText = try container.decodeIfPresent(String.self, forKey: "RichText")
        try super.init(from: decoder)
    }
}

