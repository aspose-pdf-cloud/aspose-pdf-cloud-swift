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


/** Represents graphics info. */

open class GraphInfo: Codable {

    /** Gets or sets a float value that indicates the line width of the graph. */
    public var lineWidth: Double?
    /** Gets or sets a Color object that indicates the color of the graph. */
    public var color: Color?
    /** Gets or sets a dash array. */
    public var dashArray: [Int]?
    /** Gets or sets a dash phase. */
    public var dashPhase: Int?
    /** Gets or sets a Color object that indicates the fill color of the graph. */
    public var fillColor: Color?
    /** Gets or sets is border doubled. */
    public var isDoubled: Bool?
    /** Gets or sets a float value that indicates the skew angle of the x-coordinate when transforming a coordinate system. */
    public var skewAngleX: Double?
    /** Gets or sets a float value that indicates the skew angle of the y-coordinate when transforming a coordinate system. */
    public var skewAngleY: Double?
    /** Gets or sets a float value that indicates the scaling rate of the x-coordinate when transforming a coordinate system. */
    public var scalingRateX: Double?
    /** Gets or sets a float value that indicates the scaling rate of the y-coordinate when transforming a coordinate system. */
    public var scalingRateY: Double?
    /** Gets or sets a float value that indicates the rotation angle of the coordinate system  when transforming a coordinate system. */
    public var rotationAngle: Double?

        
    
    public init(lineWidth: Double?, color: Color?, dashArray: [Int]?, dashPhase: Int?, fillColor: Color?, isDoubled: Bool?, skewAngleX: Double?, skewAngleY: Double?, scalingRateX: Double?, scalingRateY: Double?, rotationAngle: Double?) {
        self.lineWidth = lineWidth
        self.color = color
        self.dashArray = dashArray
        self.dashPhase = dashPhase
        self.fillColor = fillColor
        self.isDoubled = isDoubled
        self.skewAngleX = skewAngleX
        self.skewAngleY = skewAngleY
        self.scalingRateX = scalingRateX
        self.scalingRateY = scalingRateY
        self.rotationAngle = rotationAngle
    }
    

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {

        var container = encoder.container(keyedBy: String.self)

        try container.encodeIfPresent(lineWidth, forKey: "LineWidth")
        try container.encodeIfPresent(color, forKey: "Color")
        try container.encodeIfPresent(dashArray, forKey: "DashArray")
        try container.encodeIfPresent(dashPhase, forKey: "DashPhase")
        try container.encodeIfPresent(fillColor, forKey: "FillColor")
        try container.encodeIfPresent(isDoubled, forKey: "IsDoubled")
        try container.encodeIfPresent(skewAngleX, forKey: "SkewAngleX")
        try container.encodeIfPresent(skewAngleY, forKey: "SkewAngleY")
        try container.encodeIfPresent(scalingRateX, forKey: "ScalingRateX")
        try container.encodeIfPresent(scalingRateY, forKey: "ScalingRateY")
        try container.encodeIfPresent(rotationAngle, forKey: "RotationAngle")
    }

    // Decodable protocol methods

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: String.self)

        lineWidth = try container.decodeIfPresent(Double.self, forKey: "LineWidth")
        color = try container.decodeIfPresent(Color.self, forKey: "Color")
        dashArray = try container.decodeIfPresent([Int].self, forKey: "DashArray")
        dashPhase = try container.decodeIfPresent(Int.self, forKey: "DashPhase")
        fillColor = try container.decodeIfPresent(Color.self, forKey: "FillColor")
        isDoubled = try container.decodeIfPresent(Bool.self, forKey: "IsDoubled")
        skewAngleX = try container.decodeIfPresent(Double.self, forKey: "SkewAngleX")
        skewAngleY = try container.decodeIfPresent(Double.self, forKey: "SkewAngleY")
        scalingRateX = try container.decodeIfPresent(Double.self, forKey: "ScalingRateX")
        scalingRateY = try container.decodeIfPresent(Double.self, forKey: "ScalingRateY")
        rotationAngle = try container.decodeIfPresent(Double.self, forKey: "RotationAngle")
    }
}

