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


/** Represents Pdf stamps. */

open class Stamp: Codable {

    /** Gets the stamp type. */
    public var type: StampType
    /** Sets or gets a bool value that indicates the content is stamped as background. If the value is true, the stamp content is layed at the bottom. By defalt, the value is false, the stamp content is layed at the top. */
    public var background: Bool?
    /** Gets or sets bottom margin of stamp. */
    public var bottomMargin: Double?
    /** Gets or sets Horizontal alignment of stamp on the page.  */
    public var horizontalAlignment: HorizontalAlignment?
    /** Gets or sets left margin of stamp. */
    public var leftMargin: Double?
    /** Gets or sets a value to indicate the stamp opacity. The value is from 0.0 to 1.0. By default the value is 1.0. */
    public var opacity: Double?
    /** Gets or sets right margin of stamp. */
    public var rightMargin: Double?
    /** Sets or gets the rotation of stamp content according  values. Note. This property is for set angles which are multiples of 90 degrees (0, 90, 180, 270 degrees). To set arbitrary angle use RotateAngle property.  If angle set by ArbitraryAngle is not multiple of 90 then Rotate property returns Rotation.None. */
    public var rotate: Rotation?
    /** Gets or sets rotate angle of stamp in degrees. This property allows to set arbitrary rotate angle.  */
    public var rotateAngle: Double?
    /** Gets or sets top margin of stamp. */
    public var topMargin: Double?
    /** Gets or sets vertical alignment of stamp on page. */
    public var verticalAlignment: VerticalAlignment?
    /** Horizontal stamp coordinate, starting from the left. */
    public var xIndent: Double?
    /** Vertical stamp coordinate, starting from the bottom. */
    public var yIndent: Double?
    /** Zooming factor of the stamp. Allows to scale stamp. */
    public var zoom: Double?
    /** Alignment of the text inside the stamp. */
    public var textAlignment: HorizontalAlignment?
    /** Gets or sets string value which is used as stamp on the page. */
    public var value: String?
    /** Gets text properties of the stamp. See  for details. */
    public var textState: TextState?
    /** Gets or sets the file name. */
    public var fileName: String?
    /** Gets or sets image width. Setting this property allos to scal image horizontally. */
    public var width: Double?
    /** Gets or sets image height. Setting this image allows to scale image vertically. */
    public var height: Double?
    /** Gets or sets the index of the page. */
    public var pageIndex: Int?
    /** Gets or sets value of the number of starting page. Other pages will be numbered starting from this value. */
    public var startingNumber: Int?

        
    
    public init(type: StampType, background: Bool?, bottomMargin: Double?, horizontalAlignment: HorizontalAlignment?, leftMargin: Double?, opacity: Double?, rightMargin: Double?, rotate: Rotation?, rotateAngle: Double?, topMargin: Double?, verticalAlignment: VerticalAlignment?, xIndent: Double?, yIndent: Double?, zoom: Double?, textAlignment: HorizontalAlignment?, value: String?, textState: TextState?, fileName: String?, width: Double?, height: Double?, pageIndex: Int?, startingNumber: Int?) {
        self.type = type
        self.background = background
        self.bottomMargin = bottomMargin
        self.horizontalAlignment = horizontalAlignment
        self.leftMargin = leftMargin
        self.opacity = opacity
        self.rightMargin = rightMargin
        self.rotate = rotate
        self.rotateAngle = rotateAngle
        self.topMargin = topMargin
        self.verticalAlignment = verticalAlignment
        self.xIndent = xIndent
        self.yIndent = yIndent
        self.zoom = zoom
        self.textAlignment = textAlignment
        self.value = value
        self.textState = textState
        self.fileName = fileName
        self.width = width
        self.height = height
        self.pageIndex = pageIndex
        self.startingNumber = startingNumber
    }
    

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {

        var container = encoder.container(keyedBy: String.self)

        try container.encode(type, forKey: "Type")
        try container.encodeIfPresent(background, forKey: "Background")
        try container.encodeIfPresent(bottomMargin, forKey: "BottomMargin")
        try container.encodeIfPresent(horizontalAlignment, forKey: "HorizontalAlignment")
        try container.encodeIfPresent(leftMargin, forKey: "LeftMargin")
        try container.encodeIfPresent(opacity, forKey: "Opacity")
        try container.encodeIfPresent(rightMargin, forKey: "RightMargin")
        try container.encodeIfPresent(rotate, forKey: "Rotate")
        try container.encodeIfPresent(rotateAngle, forKey: "RotateAngle")
        try container.encodeIfPresent(topMargin, forKey: "TopMargin")
        try container.encodeIfPresent(verticalAlignment, forKey: "VerticalAlignment")
        try container.encodeIfPresent(xIndent, forKey: "XIndent")
        try container.encodeIfPresent(yIndent, forKey: "YIndent")
        try container.encodeIfPresent(zoom, forKey: "Zoom")
        try container.encodeIfPresent(textAlignment, forKey: "TextAlignment")
        try container.encodeIfPresent(value, forKey: "Value")
        try container.encodeIfPresent(textState, forKey: "TextState")
        try container.encodeIfPresent(fileName, forKey: "FileName")
        try container.encodeIfPresent(width, forKey: "Width")
        try container.encodeIfPresent(height, forKey: "Height")
        try container.encodeIfPresent(pageIndex, forKey: "PageIndex")
        try container.encodeIfPresent(startingNumber, forKey: "StartingNumber")
    }

    // Decodable protocol methods

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: String.self)

        type = try container.decode(StampType.self, forKey: "Type")
        background = try container.decodeIfPresent(Bool.self, forKey: "Background")
        bottomMargin = try container.decodeIfPresent(Double.self, forKey: "BottomMargin")
        horizontalAlignment = try container.decodeIfPresent(HorizontalAlignment.self, forKey: "HorizontalAlignment")
        leftMargin = try container.decodeIfPresent(Double.self, forKey: "LeftMargin")
        opacity = try container.decodeIfPresent(Double.self, forKey: "Opacity")
        rightMargin = try container.decodeIfPresent(Double.self, forKey: "RightMargin")
        rotate = try container.decodeIfPresent(Rotation.self, forKey: "Rotate")
        rotateAngle = try container.decodeIfPresent(Double.self, forKey: "RotateAngle")
        topMargin = try container.decodeIfPresent(Double.self, forKey: "TopMargin")
        verticalAlignment = try container.decodeIfPresent(VerticalAlignment.self, forKey: "VerticalAlignment")
        xIndent = try container.decodeIfPresent(Double.self, forKey: "XIndent")
        yIndent = try container.decodeIfPresent(Double.self, forKey: "YIndent")
        zoom = try container.decodeIfPresent(Double.self, forKey: "Zoom")
        textAlignment = try container.decodeIfPresent(HorizontalAlignment.self, forKey: "TextAlignment")
        value = try container.decodeIfPresent(String.self, forKey: "Value")
        textState = try container.decodeIfPresent(TextState.self, forKey: "TextState")
        fileName = try container.decodeIfPresent(String.self, forKey: "FileName")
        width = try container.decodeIfPresent(Double.self, forKey: "Width")
        height = try container.decodeIfPresent(Double.self, forKey: "Height")
        pageIndex = try container.decodeIfPresent(Int.self, forKey: "PageIndex")
        startingNumber = try container.decodeIfPresent(Int.self, forKey: "StartingNumber")
    }
}

