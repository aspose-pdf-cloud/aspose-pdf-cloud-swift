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


/** Represents Pdf stamps. */

open class StampBase: LinkElement {

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

    
    public init(links: [Link]?, background: Bool?, bottomMargin: Double?, horizontalAlignment: HorizontalAlignment?, leftMargin: Double?, opacity: Double?, rightMargin: Double?, rotate: Rotation?, rotateAngle: Double?, topMargin: Double?, verticalAlignment: VerticalAlignment?, xIndent: Double?, yIndent: Double?, zoom: Double?) {
        super.init(links: links)
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
    }
        
    

    // Encodable protocol methods

    public override func encode(to encoder: Encoder) throws {

        var container = encoder.container(keyedBy: String.self)

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
        try super.encode(to: encoder)
    }

    // Decodable protocol methods

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: String.self)

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
        try super.init(from: decoder)
    }
}

