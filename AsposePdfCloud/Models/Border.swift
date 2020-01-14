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


/** Class representing characteristics of annotation border. */

open class Border: Codable {

    /** Gets or sets border width. */
    public var width: Int?
    /** Gets or sets effect intencity. Valid range of value is [0..2]. */
    public var effectIntensity: Int?
    /** Gets or sets border style. */
    public var style: BorderStyle?
    /** Gets or sets border effect. */
    public var effect: BorderEffect?
    /** Gets or sets dash pattern. */
    public var dash: Dash?
    /** Gets or sets border color. */
    public var color: Color?

        
    
    public init(width: Int?, effectIntensity: Int?, style: BorderStyle?, effect: BorderEffect?, dash: Dash?, color: Color?) {
        self.width = width
        self.effectIntensity = effectIntensity
        self.style = style
        self.effect = effect
        self.dash = dash
        self.color = color
    }
    

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {

        var container = encoder.container(keyedBy: String.self)

        try container.encodeIfPresent(width, forKey: "Width")
        try container.encodeIfPresent(effectIntensity, forKey: "EffectIntensity")
        try container.encodeIfPresent(style, forKey: "Style")
        try container.encodeIfPresent(effect, forKey: "Effect")
        try container.encodeIfPresent(dash, forKey: "Dash")
        try container.encodeIfPresent(color, forKey: "Color")
    }

    // Decodable protocol methods

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: String.self)

        width = try container.decodeIfPresent(Int.self, forKey: "Width")
        effectIntensity = try container.decodeIfPresent(Int.self, forKey: "EffectIntensity")
        style = try container.decodeIfPresent(BorderStyle.self, forKey: "Style")
        effect = try container.decodeIfPresent(BorderEffect.self, forKey: "Effect")
        dash = try container.decodeIfPresent(Dash.self, forKey: "Dash")
        color = try container.decodeIfPresent(Color.self, forKey: "Color")
    }
}

