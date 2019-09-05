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


/** An abstract class which represents signature custon appearance object. */

open class SignatureCustomAppearance: Codable {

    /** Gets/sets font family name. It should be existed in the document. Default value: Arial. */
    public var fontFamilyName: String?
    /** Gets/sets font size. Default value: 10. */
    public var fontSize: Double
    /** Gets/sets contact info visibility. Default value: true. */
    public var showContactInfo: Bool
    /** Gets/sets reason visibility. Default value: true. */
    public var showReason: Bool
    /** Gets/sets location visibility. Default value: true. */
    public var showLocation: Bool
    /** Gets/sets contact info label. Default value: \&quot;Contact\&quot;. */
    public var contactInfoLabel: String?
    /** Gets/sets reason label. Default value: \&quot;Reason\&quot;. */
    public var reasonLabel: String?
    /** Gets/sets location label. Default value: \&quot;Location\&quot;. */
    public var locationLabel: String?
    /** Gets/sets digital signed label. Default value: \&quot;Digitally signed by\&quot;. */
    public var digitalSignedLabel: String?
    /** Gets/sets date signed label. Default value: \&quot;Date\&quot;. */
    public var dateSignedAtLabel: String?
    /** Gets/sets datetime local format. Default value: \&quot;yyyy.MM.dd HH:mm:ss zzz\&quot;. */
    public var dateTimeLocalFormat: String?
    /** Gets/sets datetime format. Default value: \&quot;yyyy.MM.dd HH:mm:ss\&quot;. */
    public var dateTimeFormat: String?

        
    
    public init(fontFamilyName: String?, fontSize: Double, showContactInfo: Bool, showReason: Bool, showLocation: Bool, contactInfoLabel: String?, reasonLabel: String?, locationLabel: String?, digitalSignedLabel: String?, dateSignedAtLabel: String?, dateTimeLocalFormat: String?, dateTimeFormat: String?) {
        self.fontFamilyName = fontFamilyName
        self.fontSize = fontSize
        self.showContactInfo = showContactInfo
        self.showReason = showReason
        self.showLocation = showLocation
        self.contactInfoLabel = contactInfoLabel
        self.reasonLabel = reasonLabel
        self.locationLabel = locationLabel
        self.digitalSignedLabel = digitalSignedLabel
        self.dateSignedAtLabel = dateSignedAtLabel
        self.dateTimeLocalFormat = dateTimeLocalFormat
        self.dateTimeFormat = dateTimeFormat
    }
    

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {

        var container = encoder.container(keyedBy: String.self)

        try container.encodeIfPresent(fontFamilyName, forKey: "FontFamilyName")
        try container.encode(fontSize, forKey: "FontSize")
        try container.encode(showContactInfo, forKey: "ShowContactInfo")
        try container.encode(showReason, forKey: "ShowReason")
        try container.encode(showLocation, forKey: "ShowLocation")
        try container.encodeIfPresent(contactInfoLabel, forKey: "ContactInfoLabel")
        try container.encodeIfPresent(reasonLabel, forKey: "ReasonLabel")
        try container.encodeIfPresent(locationLabel, forKey: "LocationLabel")
        try container.encodeIfPresent(digitalSignedLabel, forKey: "DigitalSignedLabel")
        try container.encodeIfPresent(dateSignedAtLabel, forKey: "DateSignedAtLabel")
        try container.encodeIfPresent(dateTimeLocalFormat, forKey: "DateTimeLocalFormat")
        try container.encodeIfPresent(dateTimeFormat, forKey: "DateTimeFormat")
    }

    // Decodable protocol methods

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: String.self)

        fontFamilyName = try container.decodeIfPresent(String.self, forKey: "FontFamilyName")
        fontSize = try container.decode(Double.self, forKey: "FontSize")
        showContactInfo = try container.decode(Bool.self, forKey: "ShowContactInfo")
        showReason = try container.decode(Bool.self, forKey: "ShowReason")
        showLocation = try container.decode(Bool.self, forKey: "ShowLocation")
        contactInfoLabel = try container.decodeIfPresent(String.self, forKey: "ContactInfoLabel")
        reasonLabel = try container.decodeIfPresent(String.self, forKey: "ReasonLabel")
        locationLabel = try container.decodeIfPresent(String.self, forKey: "LocationLabel")
        digitalSignedLabel = try container.decodeIfPresent(String.self, forKey: "DigitalSignedLabel")
        dateSignedAtLabel = try container.decodeIfPresent(String.self, forKey: "DateSignedAtLabel")
        dateTimeLocalFormat = try container.decodeIfPresent(String.self, forKey: "DateTimeLocalFormat")
        dateTimeFormat = try container.decodeIfPresent(String.self, forKey: "DateTimeFormat")
    }
}

