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


/** Represents Pdf optimize options. */

open class OptimizeOptions: Codable {

    /** If true page contents will be reused when document is optimized for equal pages. */
    public var allowReusePageContent: Bool?
    /** If this flag is set to true images will be compressed in the document. Compression level is specified with ImageQuality property. */
    public var compressImages: Bool?
    /** Specifies level of image compression when CompressImages flag is used. */
    public var imageQuality: Int?
    /** If this flag is set to true, Resource streams will be analyzed. If duplicate streams are found (i.e. if stream contents is equal), then thees streams will be stored as one object.  This allows to decrease document size in some cases (for example, when same document was concatenated multiple times). */
    public var linkDuplcateStreams: Bool?
    /** If this flag is set to true, all document objects will be checked and unused objects (i.e. objects which does not have any reference) are removed from document. */
    public var removeUnusedObjects: Bool?
    /** If this flag set to true, every resource is checked on it&#39;s usage. If resource is never used, then resources is removed. This may decrease document size for example when pages were extracted from document.  */
    public var removeUnusedStreams: Bool?
    /** Make fonts not embedded if set to true.  */
    public var unembedFonts: Bool?
    /** If this flag set to true and CompressImages is true images will be resized if image resolution is greater then specified MaxResolution parameter. */
    public var resizeImages: Bool?
    /** Specifies maximum resolution of images. If image has higher resolution it will be scaled. */
    public var maxResolution: Int?
    /** Fonts will be converted into subsets if set to true. */
    public var subsetFonts: Bool?
    /** Remove private information (page piece info). */
    public var removePrivateInfo: Bool?
    /** Image encode which will be used. */
    public var imageEncoding: ImageEncoding?
    /** Version of compression algorithm. Possible values are: \&quot;Standard\&quot; - standard compression, \&quot;Fast\&quot; - fast (improved compression which is faster then standard but may be applicable not for all images), \&quot;Mixed\&quot; - mixed (standard compression is applied to images which can not be compressed by  faster algorithm, this may give best compression but more slow then \&quot;Fast\&quot; algorithm. Version \&quot;Fast\&quot; is not applicable for resizing images (standard method will be used). Default is \&quot;Standard\&quot;. */
    public var imageCompressionVersion: ImageCompressionVersion?

        
    
    public init(allowReusePageContent: Bool?, compressImages: Bool?, imageQuality: Int?, linkDuplcateStreams: Bool?, removeUnusedObjects: Bool?, removeUnusedStreams: Bool?, unembedFonts: Bool?, resizeImages: Bool?, maxResolution: Int?, subsetFonts: Bool?, removePrivateInfo: Bool?, imageEncoding: ImageEncoding?, imageCompressionVersion: ImageCompressionVersion?) {
        self.allowReusePageContent = allowReusePageContent
        self.compressImages = compressImages
        self.imageQuality = imageQuality
        self.linkDuplcateStreams = linkDuplcateStreams
        self.removeUnusedObjects = removeUnusedObjects
        self.removeUnusedStreams = removeUnusedStreams
        self.unembedFonts = unembedFonts
        self.resizeImages = resizeImages
        self.maxResolution = maxResolution
        self.subsetFonts = subsetFonts
        self.removePrivateInfo = removePrivateInfo
        self.imageEncoding = imageEncoding
        self.imageCompressionVersion = imageCompressionVersion
    }
    

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {

        var container = encoder.container(keyedBy: String.self)

        try container.encodeIfPresent(allowReusePageContent, forKey: "AllowReusePageContent")
        try container.encodeIfPresent(compressImages, forKey: "CompressImages")
        try container.encodeIfPresent(imageQuality, forKey: "ImageQuality")
        try container.encodeIfPresent(linkDuplcateStreams, forKey: "LinkDuplcateStreams")
        try container.encodeIfPresent(removeUnusedObjects, forKey: "RemoveUnusedObjects")
        try container.encodeIfPresent(removeUnusedStreams, forKey: "RemoveUnusedStreams")
        try container.encodeIfPresent(unembedFonts, forKey: "UnembedFonts")
        try container.encodeIfPresent(resizeImages, forKey: "ResizeImages")
        try container.encodeIfPresent(maxResolution, forKey: "MaxResolution")
        try container.encodeIfPresent(subsetFonts, forKey: "SubsetFonts")
        try container.encodeIfPresent(removePrivateInfo, forKey: "RemovePrivateInfo")
        try container.encodeIfPresent(imageEncoding, forKey: "ImageEncoding")
        try container.encodeIfPresent(imageCompressionVersion, forKey: "ImageCompressionVersion")
    }

    // Decodable protocol methods

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: String.self)

        allowReusePageContent = try container.decodeIfPresent(Bool.self, forKey: "AllowReusePageContent")
        compressImages = try container.decodeIfPresent(Bool.self, forKey: "CompressImages")
        imageQuality = try container.decodeIfPresent(Int.self, forKey: "ImageQuality")
        linkDuplcateStreams = try container.decodeIfPresent(Bool.self, forKey: "LinkDuplcateStreams")
        removeUnusedObjects = try container.decodeIfPresent(Bool.self, forKey: "RemoveUnusedObjects")
        removeUnusedStreams = try container.decodeIfPresent(Bool.self, forKey: "RemoveUnusedStreams")
        unembedFonts = try container.decodeIfPresent(Bool.self, forKey: "UnembedFonts")
        resizeImages = try container.decodeIfPresent(Bool.self, forKey: "ResizeImages")
        maxResolution = try container.decodeIfPresent(Int.self, forKey: "MaxResolution")
        subsetFonts = try container.decodeIfPresent(Bool.self, forKey: "SubsetFonts")
        removePrivateInfo = try container.decodeIfPresent(Bool.self, forKey: "RemovePrivateInfo")
        imageEncoding = try container.decodeIfPresent(ImageEncoding.self, forKey: "ImageEncoding")
        imageCompressionVersion = try container.decodeIfPresent(ImageCompressionVersion.self, forKey: "ImageCompressionVersion")
    }
}

