# SignatureType
The type of signature.

## Enum
Name | Type | Value | Description
------------ | ------------- | ------------- | -------------
**pkcs1** | **String** | 'PKCS1' | Represents signature object regarding PKCS#1 standard. RSA encryption algorithm and SHA-1 digest method are used for signing.
**pkcs7** | **String** | 'PKCS7' | Represents the PKCS#7 object that conform to the PKCS#7 specification in Internet RFC 2315, PKCS #7: Cryptographic Message Syntax, Version 1.5. The SHA1 digest of the document's byte range is encapsulated in the PKCS#7 SignedData field.
**pKCS7Detached** | **String** | 'PKCS7Detached' | Represents the PKCS#7 object that conform to the PKCS#7 specification in Internet RFC 2315, PKCS #7: Cryptographic Message Syntax, Version 1.5. The original signed message digest over the document's byte range is incorporated as the normal PKCS#7 SignedData field. No data shall is encapsulated in the PKCS#7 SignedData field.

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md) [[View Source]](../AsposePdfCloud/Models/SignatureType.swift)

