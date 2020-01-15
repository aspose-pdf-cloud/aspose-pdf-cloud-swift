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


/** Provides FileAttachmentAnnotation. */

open class FileAttachmentAnnotation: MarkupAnnotation {

    /** Gets or sets icon that shall be used in displaying annotation. */
    public var icon: FileIcon?
    /** Gets or sets icon&#39;s opacity from 0 to 1: 0 - completely transparant, 1 - completely opaque. */
    public var opacity: Double?
    /** Gets or sets text associated with the file specification.  */
    public var fileDescription: String?
    /** Gets or sets file specification name.  */
    public var fileName: String?
    /** Sets content file path.  */
    public var filePath: String?

    
    public init(links: [Link]?, color: Color?, contents: String?, modified: String?, id: String?, flags: [AnnotationFlags]?, name: String?, rect: Rectangle, pageIndex: Int?, zIndex: Int?, horizontalAlignment: HorizontalAlignment?, verticalAlignment: VerticalAlignment?, creationDate: String?, subject: String?, title: String?, richText: String?, icon: FileIcon?, opacity: Double?, fileDescription: String?, fileName: String?, filePath: String?) {
        super.init(links: links, color: color, contents: contents, modified: modified, id: id, flags: flags, name: name, rect: rect, pageIndex: pageIndex, zIndex: zIndex, horizontalAlignment: horizontalAlignment, verticalAlignment: verticalAlignment, creationDate: creationDate, subject: subject, title: title, richText: richText)
        self.icon = icon
        self.opacity = opacity
        self.fileDescription = fileDescription
        self.fileName = fileName
        self.filePath = filePath
    }
        
    

    // Encodable protocol methods

    public override func encode(to encoder: Encoder) throws {

        var container = encoder.container(keyedBy: String.self)

        try container.encodeIfPresent(icon, forKey: "Icon")
        try container.encodeIfPresent(opacity, forKey: "Opacity")
        try container.encodeIfPresent(fileDescription, forKey: "FileDescription")
        try container.encodeIfPresent(fileName, forKey: "FileName")
        try container.encodeIfPresent(filePath, forKey: "FilePath")
        try super.encode(to: encoder)
    }

    // Decodable protocol methods

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: String.self)

        icon = try container.decodeIfPresent(FileIcon.self, forKey: "Icon")
        opacity = try container.decodeIfPresent(Double.self, forKey: "Opacity")
        fileDescription = try container.decodeIfPresent(String.self, forKey: "FileDescription")
        fileName = try container.decodeIfPresent(String.self, forKey: "FileName")
        filePath = try container.decodeIfPresent(String.self, forKey: "FilePath")
        try super.init(from: decoder)
    }
}

