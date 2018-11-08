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


/** Provides LineAnnotation. */

open class LineAnnotation: MarkupAnnotation {

    /** Gets or sets starting point of line. */
    public var starting: Point?
    /** Gets or sets line ending style for line starting point. */
    public var startingStyle: LineEnding?
    /** Gets or sets ending point of line. */
    public var ending: Point?
    /** Gets or sets ending style for end point of line. */
    public var endingStyle: LineEnding?
    /** Gets or sets interior color of the annotation. */
    public var interiorColor: Color?
    /** Gets or sets leader line length. */
    public var leaderLine: Double?
    /** Gets or sets length of leader line extension. */
    public var leaderLineExtension: Double?
    /** Gets or sets leader line offset. */
    public var leaderLineOffset: Double?
    /** Gets or sets boolean flag which determinies is contents must be shown as caption. */
    public var showCaption: Bool?
    /** Gets or sets caption text offset from its normal position. */
    public var captionOffset: Point?
    /** Gets or sets annotation caption position. */
    public var captionPosition: CaptionPosition?
    /** Color of the annotation. */
    public var color: Color?
    /** Gets or sets the intent of the line annotation. */
    public var intent: LineIntent?

    
    public init(links: [Link]?, contents: String?, creationDate: String?, subject: String?, title: String?, modified: String?, id: String?, flags: [AnnotationFlags]?, name: String?, rect: RectanglePdf?, pageIndex: Int?, zIndex: Int?, horizontalAlignment: HorizontalAlignment?, verticalAlignment: VerticalAlignment?, richText: String?, starting: Point?, startingStyle: LineEnding?, ending: Point?, endingStyle: LineEnding?, interiorColor: Color?, leaderLine: Double?, leaderLineExtension: Double?, leaderLineOffset: Double?, showCaption: Bool?, captionOffset: Point?, captionPosition: CaptionPosition?, color: Color?, intent: LineIntent?) {
        super.init(links: links, contents: contents, creationDate: creationDate, subject: subject, title: title, modified: modified, id: id, flags: flags, name: name, rect: rect, pageIndex: pageIndex, zIndex: zIndex, horizontalAlignment: horizontalAlignment, verticalAlignment: verticalAlignment, richText: richText)
        self.starting = starting
        self.startingStyle = startingStyle
        self.ending = ending
        self.endingStyle = endingStyle
        self.interiorColor = interiorColor
        self.leaderLine = leaderLine
        self.leaderLineExtension = leaderLineExtension
        self.leaderLineOffset = leaderLineOffset
        self.showCaption = showCaption
        self.captionOffset = captionOffset
        self.captionPosition = captionPosition
        self.color = color
        self.intent = intent
    }
        
    

    // Encodable protocol methods

    public override func encode(to encoder: Encoder) throws {

        var container = encoder.container(keyedBy: String.self)

        try container.encodeIfPresent(starting, forKey: "Starting")
        try container.encodeIfPresent(startingStyle, forKey: "StartingStyle")
        try container.encodeIfPresent(ending, forKey: "Ending")
        try container.encodeIfPresent(endingStyle, forKey: "EndingStyle")
        try container.encodeIfPresent(interiorColor, forKey: "InteriorColor")
        try container.encodeIfPresent(leaderLine, forKey: "LeaderLine")
        try container.encodeIfPresent(leaderLineExtension, forKey: "LeaderLineExtension")
        try container.encodeIfPresent(leaderLineOffset, forKey: "LeaderLineOffset")
        try container.encodeIfPresent(showCaption, forKey: "ShowCaption")
        try container.encodeIfPresent(captionOffset, forKey: "CaptionOffset")
        try container.encodeIfPresent(captionPosition, forKey: "CaptionPosition")
        try container.encodeIfPresent(color, forKey: "Color")
        try container.encodeIfPresent(intent, forKey: "Intent")
        try super.encode(to: encoder)
    }

    // Decodable protocol methods

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: String.self)

        starting = try container.decodeIfPresent(Point.self, forKey: "Starting")
        startingStyle = try container.decodeIfPresent(LineEnding.self, forKey: "StartingStyle")
        ending = try container.decodeIfPresent(Point.self, forKey: "Ending")
        endingStyle = try container.decodeIfPresent(LineEnding.self, forKey: "EndingStyle")
        interiorColor = try container.decodeIfPresent(Color.self, forKey: "InteriorColor")
        leaderLine = try container.decodeIfPresent(Double.self, forKey: "LeaderLine")
        leaderLineExtension = try container.decodeIfPresent(Double.self, forKey: "LeaderLineExtension")
        leaderLineOffset = try container.decodeIfPresent(Double.self, forKey: "LeaderLineOffset")
        showCaption = try container.decodeIfPresent(Bool.self, forKey: "ShowCaption")
        captionOffset = try container.decodeIfPresent(Point.self, forKey: "CaptionOffset")
        captionPosition = try container.decodeIfPresent(CaptionPosition.self, forKey: "CaptionPosition")
        color = try container.decodeIfPresent(Color.self, forKey: "Color")
        intent = try container.decodeIfPresent(LineIntent.self, forKey: "Intent")
        try super.init(from: decoder)
    }
}

