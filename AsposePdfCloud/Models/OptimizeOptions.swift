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


/** Represents Pdf optimize options. */

open class OptimizeOptions: Codable {

    /** If true page contents will be reused when document is optimized for equal pages. */
    public var allowReusePageContent: Bool
    /** If this flag is set to true images will be compressed in the document. compression level is specfied with ImageQuality property. */
    public var compressImages: Bool
    /** Specifie slevel of image compression when CompressIamges flag is used. */
    public var imageQuality: Int
    /** If this flag is set to true, Resource streams will be analyzed. If duplicate streams are found (i.e. if stream contents is equal), then thes streams will be stored as one object.  This allows to decrease document size in some cases (for example, when same document was concatenedted multiple times). */
    public var linkDuplcateStreams: Bool
    /** If this flag is set to true, all document objects will be checked and unused objects (i.e. objects which does not have any reference) are removed from document. */
    public var removeUnusedObjects: Bool
    /** If this flag set to true, every resource is checked on it&#39;s usage. If resource is never used, then resources is removed. This may decrease document size for example when pages were extracted from document.  */
    public var removeUnusedStreams: Bool
    /** Make fonts not embedded if set to true.  */
    public var unembedFonts: Bool


    
    public init(allowReusePageContent: Bool, compressImages: Bool, imageQuality: Int, linkDuplcateStreams: Bool, removeUnusedObjects: Bool, removeUnusedStreams: Bool, unembedFonts: Bool) {
        self.allowReusePageContent = allowReusePageContent
        self.compressImages = compressImages
        self.imageQuality = imageQuality
        self.linkDuplcateStreams = linkDuplcateStreams
        self.removeUnusedObjects = removeUnusedObjects
        self.removeUnusedStreams = removeUnusedStreams
        self.unembedFonts = unembedFonts
    }
    

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {

        var container = encoder.container(keyedBy: String.self)

        try container.encode(allowReusePageContent, forKey: "AllowReusePageContent")
        try container.encode(compressImages, forKey: "CompressImages")
        try container.encode(imageQuality, forKey: "ImageQuality")
        try container.encode(linkDuplcateStreams, forKey: "LinkDuplcateStreams")
        try container.encode(removeUnusedObjects, forKey: "RemoveUnusedObjects")
        try container.encode(removeUnusedStreams, forKey: "RemoveUnusedStreams")
        try container.encode(unembedFonts, forKey: "UnembedFonts")
    }

    // Decodable protocol methods

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: String.self)

        allowReusePageContent = try container.decode(Bool.self, forKey: "AllowReusePageContent")
        compressImages = try container.decode(Bool.self, forKey: "CompressImages")
        imageQuality = try container.decode(Int.self, forKey: "ImageQuality")
        linkDuplcateStreams = try container.decode(Bool.self, forKey: "LinkDuplcateStreams")
        removeUnusedObjects = try container.decode(Bool.self, forKey: "RemoveUnusedObjects")
        removeUnusedStreams = try container.decode(Bool.self, forKey: "RemoveUnusedStreams")
        unembedFonts = try container.decode(Bool.self, forKey: "UnembedFonts")
    }
}
