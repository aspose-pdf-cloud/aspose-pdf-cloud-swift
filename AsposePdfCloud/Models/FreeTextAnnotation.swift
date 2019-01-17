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


/** Provides FreeTextAnnotation. */

open class FreeTextAnnotation: MarkupAnnotation {

    /** Gets Justification of the annotation. */
    public var justification: Justification?
    /** Gets or sets the intent of the free text annotation. */
    public var intent: FreeTextIntent?
    /** Angle of annotation rotation. */
    public var rotate: Rotation?
    /** Text style of the annotation. */
    public var textStyle: TextStyle?

    
    public init(links: [Link]?, color: Color?, contents: String?, modified: String?, id: String?, flags: [AnnotationFlags]?, name: String?, rect: Rectangle?, pageIndex: Int?, zIndex: Int?, horizontalAlignment: HorizontalAlignment?, verticalAlignment: VerticalAlignment?, creationDate: String?, subject: String?, title: String?, richText: String?, justification: Justification?, intent: FreeTextIntent?, rotate: Rotation?, textStyle: TextStyle?) {
        super.init(links: links, color: color, contents: contents, modified: modified, id: id, flags: flags, name: name, rect: rect, pageIndex: pageIndex, zIndex: zIndex, horizontalAlignment: horizontalAlignment, verticalAlignment: verticalAlignment, creationDate: creationDate, subject: subject, title: title, richText: richText)
        self.justification = justification
        self.intent = intent
        self.rotate = rotate
        self.textStyle = textStyle
    }
        
    

    // Encodable protocol methods

    public override func encode(to encoder: Encoder) throws {

        var container = encoder.container(keyedBy: String.self)

        try container.encodeIfPresent(justification, forKey: "Justification")
        try container.encodeIfPresent(intent, forKey: "Intent")
        try container.encodeIfPresent(rotate, forKey: "Rotate")
        try container.encodeIfPresent(textStyle, forKey: "TextStyle")
        try super.encode(to: encoder)
    }

    // Decodable protocol methods

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: String.self)

        justification = try container.decodeIfPresent(Justification.self, forKey: "Justification")
        intent = try container.decodeIfPresent(FreeTextIntent.self, forKey: "Intent")
        rotate = try container.decodeIfPresent(Rotation.self, forKey: "Rotate")
        textStyle = try container.decodeIfPresent(TextStyle.self, forKey: "TextStyle")
        try super.init(from: decoder)
    }
}

