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


/** Provides RedactionAnnotation. */

open class RedactionAnnotation: Annotation {

    /** An array of 8xN numbers specifying the coordinates of content region that is intended to be removed.  */
    public var quadPoint: [Point]?
    /** Gets or sets color to fill annotation. */
    public var fillColor: Color?
    /** Gets or sets color of border which is drawn when redaction is not active. */
    public var borderColor: Color?
    /** Text to print on redact annotation. */
    public var overlayText: String?
    /** If true overlay text will be repated on the annotation.  */
    public var repeat: Bool?
    /** Gets or sets. Alignment of Overlay Text. */
    public var textAlignment: HorizontalAlignment?

    
    public init(links: [Link]?, color: Color?, contents: String?, modified: String?, id: String?, flags: [AnnotationFlags]?, name: String?, rect: Rectangle?, pageIndex: Int?, zIndex: Int?, horizontalAlignment: HorizontalAlignment?, verticalAlignment: VerticalAlignment?, quadPoint: [Point]?, fillColor: Color?, borderColor: Color?, overlayText: String?, repeat: Bool?, textAlignment: HorizontalAlignment?) {
        super.init(links: links)
        self.quadPoint = quadPoint
        self.fillColor = fillColor
        self.borderColor = borderColor
        self.overlayText = overlayText
        self.repeat = repeat
        self.textAlignment = textAlignment
    }
        
    

    // Encodable protocol methods

    public override func encode(to encoder: Encoder) throws {

        var container = encoder.container(keyedBy: String.self)

        try container.encodeIfPresent(quadPoint, forKey: "QuadPoint")
        try container.encodeIfPresent(fillColor, forKey: "FillColor")
        try container.encodeIfPresent(borderColor, forKey: "BorderColor")
        try container.encodeIfPresent(overlayText, forKey: "OverlayText")
        try container.encodeIfPresent(repeat, forKey: "Repeat")
        try container.encodeIfPresent(textAlignment, forKey: "TextAlignment")
        try super.encode(to: encoder)
    }

    // Decodable protocol methods

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: String.self)

        quadPoint = try container.decodeIfPresent([Point].self, forKey: "QuadPoint")
        fillColor = try container.decodeIfPresent(Color.self, forKey: "FillColor")
        borderColor = try container.decodeIfPresent(Color.self, forKey: "BorderColor")
        overlayText = try container.decodeIfPresent(String.self, forKey: "OverlayText")
        repeat = try container.decodeIfPresent(Bool.self, forKey: "Repeat")
        textAlignment = try container.decodeIfPresent(HorizontalAlignment.self, forKey: "TextAlignment")
        try super.init(from: decoder)
    }
}

