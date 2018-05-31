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

public typealias EncodeResult = (data: Data?, error: Error?)

open class CodableHelper {

    open static var dateformatter: DateFormatter?

    open class func decode<T>(_ type: T.Type, from data: Data) -> (decodableObj: T?, error: Error?) where T : Decodable {
        var returnedDecodable: T? = nil
        var returnedError: Error? = nil

        let decoder = JSONDecoder()
        if let df = self.dateformatter {
            decoder.dateDecodingStrategy = .formatted(df)
        } else {
            decoder.dataDecodingStrategy = .base64
            let formatter = DateFormatter()
            formatter.calendar = Calendar(identifier: .iso8601)
            formatter.locale = Locale(identifier: "en_US_POSIX")
            formatter.timeZone = TimeZone(secondsFromGMT: 0)
            formatter.dateFormat = "yyyy-MM-dd'T'HH:mm:ss.SSSXXXXX"
            decoder.dateDecodingStrategy = .formatted(formatter)
        }

        do {
            returnedDecodable = try decoder.decode(type, from: data)
        } catch {
            returnedError = error
        }

        return (returnedDecodable, returnedError)
    }

    open class func encode<T>(_ value: T, prettyPrint: Bool = false) -> EncodeResult where T : Encodable {
        var returnedData: Data?
        var returnedError: Error? = nil

        let encoder = JSONEncoder()
        if prettyPrint {
            encoder.outputFormatting = .prettyPrinted
        }
        encoder.dataEncodingStrategy = .base64
        let formatter = DateFormatter()
        formatter.calendar = Calendar(identifier: .iso8601)
        formatter.locale = Locale(identifier: "en_US_POSIX")
        formatter.timeZone = TimeZone(secondsFromGMT: 0)
        formatter.dateFormat = "yyyy-MM-dd'T'HH:mm:ss.SSSXXXXX"
        encoder.dateEncodingStrategy = .formatted(formatter)

        do {
            returnedData = try encoder.encode(value)
        } catch {
            returnedError = error
        }

        return (returnedData, returnedError)
    }

}
