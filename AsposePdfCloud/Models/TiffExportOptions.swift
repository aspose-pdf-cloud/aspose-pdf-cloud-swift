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


/** Used for tiff export options setting. */

open class TiffExportOptions: Codable {

    /** Image brightness. */
    public var brightness: Double?
    /** Tiff compression. Possible values are: LZW, CCITT4, CCITT3, RLE, None. */
    public var compression: CompressionType?
    /** Image color depth. Possible valuse are: Default, Format8bpp, Format4bpp, Format1bpp. */
    public var colorDepth: ColorDepth?
    /** Left image margin. */
    public var leftMargin: Int?
    /** Right image margin. */
    public var rightMargin: Int?
    /** Top image margin. */
    public var topMargin: Int?
    /** Bottom image margin. */
    public var bottomMargin: Int?
    /** Image orientation. Possible values are: None, Landscape, Portait. */
    public var orientation: ShapeType?
    /** Skip blank pages flag. */
    public var skipBlankPages: Bool?
    /** Image width. */
    public var width: Int?
    /** Image height. */
    public var height: Int?
    /** Horizontal resolution. */
    public var xResolution: Int?
    /** Vertical resolution. */
    public var yResolution: Int?
    /** Start page to export. */
    public var pageIndex: Int?
    /** Number of pages to export. */
    public var pageCount: Int?
    /** Resulting image file. */
    public var resultFile: String?

        
    
    public init(brightness: Double?, compression: CompressionType?, colorDepth: ColorDepth?, leftMargin: Int?, rightMargin: Int?, topMargin: Int?, bottomMargin: Int?, orientation: ShapeType?, skipBlankPages: Bool?, width: Int?, height: Int?, xResolution: Int?, yResolution: Int?, pageIndex: Int?, pageCount: Int?, resultFile: String?) {
        self.brightness = brightness
        self.compression = compression
        self.colorDepth = colorDepth
        self.leftMargin = leftMargin
        self.rightMargin = rightMargin
        self.topMargin = topMargin
        self.bottomMargin = bottomMargin
        self.orientation = orientation
        self.skipBlankPages = skipBlankPages
        self.width = width
        self.height = height
        self.xResolution = xResolution
        self.yResolution = yResolution
        self.pageIndex = pageIndex
        self.pageCount = pageCount
        self.resultFile = resultFile
    }
    

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {

        var container = encoder.container(keyedBy: String.self)

        try container.encodeIfPresent(brightness, forKey: "Brightness")
        try container.encodeIfPresent(compression, forKey: "Compression")
        try container.encodeIfPresent(colorDepth, forKey: "ColorDepth")
        try container.encodeIfPresent(leftMargin, forKey: "LeftMargin")
        try container.encodeIfPresent(rightMargin, forKey: "RightMargin")
        try container.encodeIfPresent(topMargin, forKey: "TopMargin")
        try container.encodeIfPresent(bottomMargin, forKey: "BottomMargin")
        try container.encodeIfPresent(orientation, forKey: "Orientation")
        try container.encodeIfPresent(skipBlankPages, forKey: "SkipBlankPages")
        try container.encodeIfPresent(width, forKey: "Width")
        try container.encodeIfPresent(height, forKey: "Height")
        try container.encodeIfPresent(xResolution, forKey: "XResolution")
        try container.encodeIfPresent(yResolution, forKey: "YResolution")
        try container.encodeIfPresent(pageIndex, forKey: "PageIndex")
        try container.encodeIfPresent(pageCount, forKey: "PageCount")
        try container.encodeIfPresent(resultFile, forKey: "ResultFile")
    }

    // Decodable protocol methods

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: String.self)

        brightness = try container.decodeIfPresent(Double.self, forKey: "Brightness")
        compression = try container.decodeIfPresent(CompressionType.self, forKey: "Compression")
        colorDepth = try container.decodeIfPresent(ColorDepth.self, forKey: "ColorDepth")
        leftMargin = try container.decodeIfPresent(Int.self, forKey: "LeftMargin")
        rightMargin = try container.decodeIfPresent(Int.self, forKey: "RightMargin")
        topMargin = try container.decodeIfPresent(Int.self, forKey: "TopMargin")
        bottomMargin = try container.decodeIfPresent(Int.self, forKey: "BottomMargin")
        orientation = try container.decodeIfPresent(ShapeType.self, forKey: "Orientation")
        skipBlankPages = try container.decodeIfPresent(Bool.self, forKey: "SkipBlankPages")
        width = try container.decodeIfPresent(Int.self, forKey: "Width")
        height = try container.decodeIfPresent(Int.self, forKey: "Height")
        xResolution = try container.decodeIfPresent(Int.self, forKey: "XResolution")
        yResolution = try container.decodeIfPresent(Int.self, forKey: "YResolution")
        pageIndex = try container.decodeIfPresent(Int.self, forKey: "PageIndex")
        pageCount = try container.decodeIfPresent(Int.self, forKey: "PageCount")
        resultFile = try container.decodeIfPresent(String.self, forKey: "ResultFile")
    }
}

