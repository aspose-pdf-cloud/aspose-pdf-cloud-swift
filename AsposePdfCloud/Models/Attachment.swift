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


/** Provides link to attachment. */

open class Attachment: LinkElement {

    /** Gets text associated with the attachment.  */
    public var description: String?
    /** Gets subtype of the attachment file. */
    public var mimeType: String?
    /** Gets the name of the attachment.  */
    public var name: String?
    /** The date and time when the embedded file was created. */
    public var creationDate: String?
    /** The date and time when the embedded file was last modified. */
    public var modificationDate: String?
    /** The size of the uncompressed embedded file, in bytes. */
    public var size: Int?
    /** A 16-byte string that is the checksum of the bytes of the uncompressed embedded file.  The checksum is calculated by applying the standard MD5 message-digest algorithm  to the bytes of the embedded file stream. */
    public var checkSum: String?

    
    public init(links: [Link]?, description: String?, mimeType: String?, name: String?, creationDate: String?, modificationDate: String?, size: Int?, checkSum: String?) {
        self.links = links
        self.description = description
        self.mimeType = mimeType
        self.name = name
        self.creationDate = creationDate
        self.modificationDate = modificationDate
        self.size = size
        self.checkSum = checkSum
    }
        
    

    // Encodable protocol methods

    public override func encode(to encoder: Encoder) throws {

        var container = encoder.container(keyedBy: String.self)

        try container.encodeIfPresent(description, forKey: "Description")
        try container.encodeIfPresent(mimeType, forKey: "MimeType")
        try container.encodeIfPresent(name, forKey: "Name")
        try container.encodeIfPresent(creationDate, forKey: "CreationDate")
        try container.encodeIfPresent(modificationDate, forKey: "ModificationDate")
        try container.encodeIfPresent(size, forKey: "Size")
        try container.encodeIfPresent(checkSum, forKey: "CheckSum")
        try super.encode(to: encoder)
    }

    // Decodable protocol methods

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: String.self)

        description = try container.decodeIfPresent(String.self, forKey: "Description")
        mimeType = try container.decodeIfPresent(String.self, forKey: "MimeType")
        name = try container.decodeIfPresent(String.self, forKey: "Name")
        creationDate = try container.decodeIfPresent(String.self, forKey: "CreationDate")
        modificationDate = try container.decodeIfPresent(String.self, forKey: "ModificationDate")
        size = try container.decodeIfPresent(Int.self, forKey: "Size")
        checkSum = try container.decodeIfPresent(String.self, forKey: "CheckSum")
        try super.init(from: decoder)
    }
}

