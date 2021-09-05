// To parse this JSON data, do
//
//     final contactResponse = contactResponseFromJson(jsonString);

import 'dart:convert';

ContactResponse contactResponseFromJson(String str) => ContactResponse.fromJson(json.decode(str));

String contactResponseToJson(ContactResponse data) => json.encode(data.toJson());

class ContactResponse {
    ContactResponse({
        required this.responseMessage,
        required this.responseCode,
        required this.contactUs,
    });

    String responseMessage;
    String responseCode;
    List<ContactUs> contactUs;

    factory ContactResponse.fromJson(Map<String, dynamic> json) => ContactResponse(
        responseMessage: json["responseMessage"],
        responseCode: json["responseCode"],
        contactUs: List<ContactUs>.from(json["contact_us"].map((x) => ContactUs.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "responseMessage": responseMessage,
        "responseCode": responseCode,
        "contact_us": List<dynamic>.from(contactUs.map((x) => x.toJson())),
    };
}

class ContactUs {
    ContactUs({
        required this.office,
        required this.branch,
        required this.address,
        required this.phoneNo,
    });

    String office;
    String branch;
    String address;
    String phoneNo;

    factory ContactUs.fromJson(Map<String, dynamic> json) => ContactUs(
        office: json["office"],
        branch: json["branch"],
        address: json["address"],
        phoneNo: json["phone_no"],
    );

    Map<String, dynamic> toJson() => {
        "office": office,
        "branch": branch,
        "address": address,
        "phone_no": phoneNo,
    };
}
