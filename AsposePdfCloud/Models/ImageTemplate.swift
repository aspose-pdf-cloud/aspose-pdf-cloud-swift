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


/** Template of image. */

open class ImageTemplate: Codable {

    /** A path for image. */
    public var imagePath: String
    /** Image type. */
    public var imageSrcType: ImageSrcType
    public var leftMargin: Double?
    public var rightMargin: Double?
    public var topMargin: Double?
    public var bottomMargin: Double?
    public var pageWidth: Double?
    public var pageHeight: Double?
    public var marginInfo: MarginInfo?


    
    public init(imagePath: String, imageSrcType: ImageSrcType, leftMargin: Double?, rightMargin: Double?, topMargin: Double?, bottomMargin: Double?, pageWidth: Double?, pageHeight: Double?, marginInfo: MarginInfo?) {
        self.imagePath = imagePath
        self.imageSrcType = imageSrcType
        self.leftMargin = leftMargin
        self.rightMargin = rightMargin
        self.topMargin = topMargin
        self.bottomMargin = bottomMargin
        self.pageWidth = pageWidth
        self.pageHeight = pageHeight
        self.marginInfo = marginInfo
    }
    

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {

        var container = encoder.container(keyedBy: String.self)

        try container.encode(imagePath, forKey: "ImagePath")
        try container.encode(imageSrcType, forKey: "ImageSrcType")
        try container.encodeIfPresent(leftMargin, forKey: "LeftMargin")
        try container.encodeIfPresent(rightMargin, forKey: "RightMargin")
        try container.encodeIfPresent(topMargin, forKey: "TopMargin")
        try container.encodeIfPresent(bottomMargin, forKey: "BottomMargin")
        try container.encodeIfPresent(pageWidth, forKey: "PageWidth")
        try container.encodeIfPresent(pageHeight, forKey: "PageHeight")
        try container.encodeIfPresent(marginInfo, forKey: "MarginInfo")
    }

    // Decodable protocol methods

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: String.self)

        imagePath = try container.decode(String.self, forKey: "ImagePath")
        imageSrcType = try container.decode(ImageSrcType.self, forKey: "ImageSrcType")
        leftMargin = try container.decodeIfPresent(Double.self, forKey: "LeftMargin")
        rightMargin = try container.decodeIfPresent(Double.self, forKey: "RightMargin")
        topMargin = try container.decodeIfPresent(Double.self, forKey: "TopMargin")
        bottomMargin = try container.decodeIfPresent(Double.self, forKey: "BottomMargin")
        pageWidth = try container.decodeIfPresent(Double.self, forKey: "PageWidth")
        pageHeight = try container.decodeIfPresent(Double.self, forKey: "PageHeight")
        marginInfo = try container.decodeIfPresent(MarginInfo.self, forKey: "MarginInfo")
    }
}

