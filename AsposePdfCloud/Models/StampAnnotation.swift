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


/** Provides StampAnnotation. */

open class StampAnnotation: MarkupAnnotation {

    /** Gets or sets icon for rubber stamp. */
    public var icon: StampIcon?
    /** Sets content file path.  */
    public var filePath: String?
    /** Gets is image exist.  */
    public var hasImage: Bool?

    
    public init(links: [Link]?, color: Color?, contents: String?, modified: String?, id: String?, flags: [AnnotationFlags]?, name: String?, rect: Rectangle, pageIndex: Int?, zIndex: Int?, horizontalAlignment: HorizontalAlignment?, verticalAlignment: VerticalAlignment?, creationDate: String?, subject: String?, title: String?, richText: String?, icon: StampIcon?, filePath: String?, hasImage: Bool?) {
        super.init(links: links)
        self.icon = icon
        self.filePath = filePath
        self.hasImage = hasImage
    }
        
    

    // Encodable protocol methods

    public override func encode(to encoder: Encoder) throws {

        var container = encoder.container(keyedBy: String.self)

        try container.encodeIfPresent(icon, forKey: "Icon")
        try container.encodeIfPresent(filePath, forKey: "FilePath")
        try container.encodeIfPresent(hasImage, forKey: "HasImage")
        try super.encode(to: encoder)
    }

    // Decodable protocol methods

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: String.self)

        icon = try container.decodeIfPresent(StampIcon.self, forKey: "Icon")
        filePath = try container.decodeIfPresent(String.self, forKey: "FilePath")
        hasImage = try container.decodeIfPresent(Bool.self, forKey: "HasImage")
        try super.init(from: decoder)
    }
}

