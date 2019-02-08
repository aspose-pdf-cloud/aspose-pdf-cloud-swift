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


/** Provides SoundAnnotation. */

open class SoundAnnotation: MarkupAnnotation {

    /** A sound file path defining the sound to be played when the annotation is activated. */
    public var filePath: String?
    /** Gets or sets an icon to be used in displaying the annotation. */
    public var icon: SoundIcon?
    /** Gets or sets the sampling rate, in samples per second. */
    public var rate: Int?
    /** Gets or sets the number of sound channels. */
    public var channels: Int?
    /** Gets or sets the number of bits per sample value per channel. */
    public var bits: Int?
    /** Gets or sets the encoding format for the sample data. */
    public var encoding: SoundEncoding?

    
    public init(links: [Link]?, color: Color?, contents: String?, modified: String?, id: String?, flags: [AnnotationFlags]?, name: String?, rect: Rectangle?, pageIndex: Int?, zIndex: Int?, horizontalAlignment: HorizontalAlignment?, verticalAlignment: VerticalAlignment?, creationDate: String?, subject: String?, title: String?, richText: String?, filePath: String?, icon: SoundIcon?, rate: Int?, channels: Int?, bits: Int?, encoding: SoundEncoding?) {
        super.init(links: links, color: color, contents: contents, modified: modified, id: id, flags: flags, name: name, rect: rect, pageIndex: pageIndex, zIndex: zIndex, horizontalAlignment: horizontalAlignment, verticalAlignment: verticalAlignment, creationDate: creationDate, subject: subject, title: title, richText: richText)
        self.filePath = filePath
        self.icon = icon
        self.rate = rate
        self.channels = channels
        self.bits = bits
        self.encoding = encoding
    }
        
    

    // Encodable protocol methods

    public override func encode(to encoder: Encoder) throws {

        var container = encoder.container(keyedBy: String.self)

        try container.encodeIfPresent(filePath, forKey: "FilePath")
        try container.encodeIfPresent(icon, forKey: "Icon")
        try container.encodeIfPresent(rate, forKey: "Rate")
        try container.encodeIfPresent(channels, forKey: "Channels")
        try container.encodeIfPresent(bits, forKey: "Bits")
        try container.encodeIfPresent(encoding, forKey: "Encoding")
        try super.encode(to: encoder)
    }

    // Decodable protocol methods

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: String.self)

        filePath = try container.decodeIfPresent(String.self, forKey: "FilePath")
        icon = try container.decodeIfPresent(SoundIcon.self, forKey: "Icon")
        rate = try container.decodeIfPresent(Int.self, forKey: "Rate")
        channels = try container.decodeIfPresent(Int.self, forKey: "Channels")
        bits = try container.decodeIfPresent(Int.self, forKey: "Bits")
        encoding = try container.decodeIfPresent(SoundEncoding.self, forKey: "Encoding")
        try super.init(from: decoder)
    }
}

