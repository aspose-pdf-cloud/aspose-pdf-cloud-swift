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


/** Create document from images request. */

open class ImageTemplatesRequest: Codable {

    /** Using OCR function. */
    public var isOCR: Bool
    /** Language for recognition possible values: eng, ara, bel, ben, bul, ces, dan, deu, ell, fin, fra, heb, hin, ind, isl, ita, jpn, kor, nld, nor, pol, por, ron, rus, spa, swe, tha, tur, ukr, vie, chi_sim, chi_tra      or thier combination e.g. eng+rus */
    public var oCRLangs: String?
    /** A List of objects describing images to be added. */
    public var imagesList: [ImageTemplate]

        
    
    public init(isOCR: Bool, oCRLangs: String?, imagesList: [ImageTemplate]) {
        self.isOCR = isOCR
        self.oCRLangs = oCRLangs
        self.imagesList = imagesList
    }
    

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {

        var container = encoder.container(keyedBy: String.self)

        try container.encode(isOCR, forKey: "IsOCR")
        try container.encodeIfPresent(oCRLangs, forKey: "OCRLangs")
        try container.encode(imagesList, forKey: "ImagesList")
    }

    // Decodable protocol methods

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: String.self)

        isOCR = try container.decode(Bool.self, forKey: "IsOCR")
        oCRLangs = try container.decodeIfPresent(String.self, forKey: "OCRLangs")
        imagesList = try container.decode([ImageTemplate].self, forKey: "ImagesList")
    }
}

