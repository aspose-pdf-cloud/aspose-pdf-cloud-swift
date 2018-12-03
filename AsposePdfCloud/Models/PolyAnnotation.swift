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


/** Provides PolyAnnotation. */

open class PolyAnnotation: MarkupAnnotation {

    /** Gets or sets the interior color with which to fill the annotation?s line endings. */
    public var interiorColor: Color?
    /** Gets or sets the style of first line ending. */
    public var startingStyle: LineEnding?
    /** Gets or sets the style of second line ending. */
    public var endingStyle: LineEnding?
    /** Gets or sets the intent of the polygon or polyline annotation. */
    public var intent: PolyIntent?
    /** Gets or sets an array of points representing the horizontal and vertical coordinates of each vertex. */
    public var vertices: [Point]?

    
    public init(links: [Link]?, contents: String?, modified: String?, id: String?, flags: [AnnotationFlags]?, name: String?, rect: RectanglePdf?, pageIndex: Int?, zIndex: Int?, horizontalAlignment: HorizontalAlignment?, verticalAlignment: VerticalAlignment?, creationDate: String?, subject: String?, title: String?, richText: String?, interiorColor: Color?, startingStyle: LineEnding?, endingStyle: LineEnding?, intent: PolyIntent?, vertices: [Point]?) {
        super.init(links: links)
        self.interiorColor = interiorColor
        self.startingStyle = startingStyle
        self.endingStyle = endingStyle
        self.intent = intent
        self.vertices = vertices
    }
        
    

    // Encodable protocol methods

    public override func encode(to encoder: Encoder) throws {

        var container = encoder.container(keyedBy: String.self)

        try container.encodeIfPresent(interiorColor, forKey: "InteriorColor")
        try container.encodeIfPresent(startingStyle, forKey: "StartingStyle")
        try container.encodeIfPresent(endingStyle, forKey: "EndingStyle")
        try container.encodeIfPresent(intent, forKey: "Intent")
        try container.encodeIfPresent(vertices, forKey: "Vertices")
        try super.encode(to: encoder)
    }

    // Decodable protocol methods

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: String.self)

        interiorColor = try container.decodeIfPresent(Color.self, forKey: "InteriorColor")
        startingStyle = try container.decodeIfPresent(LineEnding.self, forKey: "StartingStyle")
        endingStyle = try container.decodeIfPresent(LineEnding.self, forKey: "EndingStyle")
        intent = try container.decodeIfPresent(PolyIntent.self, forKey: "Intent")
        vertices = try container.decodeIfPresent([Point].self, forKey: "Vertices")
        try super.init(from: decoder)
    }
}

