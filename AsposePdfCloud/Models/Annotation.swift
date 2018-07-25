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


/** Provides annotation. */

open class Annotation: LinkElement {

    /** Get the annotation color. */
    public var color: Color?
    /** Get the annotation content. */
    public var contents: String?
    /** The date and time when the annotation was created. */
    public var creationDate: String?
    /** Get the annotation subject. */
    public var subject: String?
    /** Get the annotation title. */
    public var title: String?
    /** The date and time when the annotation was last modified. */
    public var modified: String?

    
    public init(links: [Link]?, color: Color?, contents: String?, creationDate: String?, subject: String?, title: String?, modified: String?) {
        super.init(links: links)
        self.color = color
        self.contents = contents
        self.creationDate = creationDate
        self.subject = subject
        self.title = title
        self.modified = modified
    }
        
    

    // Encodable protocol methods

    public override func encode(to encoder: Encoder) throws {

        var container = encoder.container(keyedBy: String.self)

        try container.encodeIfPresent(color, forKey: "Color")
        try container.encodeIfPresent(contents, forKey: "Contents")
        try container.encodeIfPresent(creationDate, forKey: "CreationDate")
        try container.encodeIfPresent(subject, forKey: "Subject")
        try container.encodeIfPresent(title, forKey: "Title")
        try container.encodeIfPresent(modified, forKey: "Modified")
        try super.encode(to: encoder)
    }

    // Decodable protocol methods

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: String.self)

        color = try container.decodeIfPresent(Color.self, forKey: "Color")
        contents = try container.decodeIfPresent(String.self, forKey: "Contents")
        creationDate = try container.decodeIfPresent(String.self, forKey: "CreationDate")
        subject = try container.decodeIfPresent(String.self, forKey: "Subject")
        title = try container.decodeIfPresent(String.self, forKey: "Title")
        modified = try container.decodeIfPresent(String.self, forKey: "Modified")
        try super.init(from: decoder)
    }
}

