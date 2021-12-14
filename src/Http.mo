module {
    public type HeaderField = (Text, Text);

    public type Request = {
        url     : Text;
        method  : Method;
        body    : Blob;
        headers : [HeaderField];
    };

    public type Response = {
        body        : Blob;
        headers     : [HeaderField];
        status_code : StatusCode;
    };

    public type Method = Text;

    // Common HTTP methods.
    public module Method {
        public let Get     : Method = "GET";
        public let Head    : Method = "HEAD";
        public let Post    : Method = "POST";
        public let Put     : Method = "PUT";
        public let Patch   : Method = "PATCH";
        public let Delete  : Method = "DELETE";
        public let Connect : Method = "CONNECT";
        public let Options : Method = "OPTIONS";
        public let Trace   : Method = "TRACE";
    };

    public type StatusCode = Nat16;

    // HTTP status codes as registered with IANA. 
    public module Status {
        public let Continue           : StatusCode = 100; // RFC 7231, 6.2.1
        public let SwitchingProtocols : StatusCode = 101; // RFC 7231, 6.2.2
        public let Processing         : StatusCode = 102; // RFC 2518, 10.1
        public let EarlyHints         : StatusCode = 103; // RFC 8297

        public let OK                   : StatusCode = 200; // RFC 7231, 6.3.1
        public let Created              : StatusCode = 201; // RFC 7231, 6.3.2
        public let Accepted             : StatusCode = 202; // RFC 7231, 6.3.3
        public let NonAuthoritativeInfo : StatusCode = 203; // RFC 7231, 6.3.4
        public let NoContent            : StatusCode = 204; // RFC 7231, 6.3.5
        public let ResetContent         : StatusCode = 205; // RFC 7231, 6.3.6
        public let PartialContent       : StatusCode = 206; // RFC 7233, 4.1
        public let MultiStatus          : StatusCode = 207; // RFC 4918, 11.1
        public let AlreadyReported      : StatusCode = 208; // RFC 5842, 7.1
        public let IMUsed               : StatusCode = 226; // RFC 3229, 10.4.1

        public let MultipleChoices  : StatusCode = 300; // RFC 7231, 6.4.1
        public let MovedPermanently : StatusCode = 301; // RFC 7231, 6.4.2
        public let Found            : StatusCode = 302; // RFC 7231, 6.4.3
        public let SeeOther         : StatusCode = 303; // RFC 7231, 6.4.4
        public let NotModified      : StatusCode = 304; // RFC 7232, 4.1
        public let UseProxy         : StatusCode = 305; // RFC 7231, 6.4.5

        public let TemporaryRedirect : StatusCode = 307; // RFC 7231, 6.4.7
        public let PermanentRedirect : StatusCode = 308; // RFC 7538, 3

        public let BadRequest                   : StatusCode = 400; // RFC 7231, 6.5.1
        public let Unauthorized                 : StatusCode = 401; // RFC 7235, 3.1
        public let PaymentRequired              : StatusCode = 402; // RFC 7231, 6.5.2
        public let Forbidden                    : StatusCode = 403; // RFC 7231, 6.5.3
        public let NotFound                     : StatusCode = 404; // RFC 7231, 6.5.4
        public let MethodNotAllowed             : StatusCode = 405; // RFC 7231, 6.5.5
        public let NotAcceptable                : StatusCode = 406; // RFC 7231, 6.5.6
        public let ProxyAuthRequired            : StatusCode = 407; // RFC 7235, 3.2
        public let RequestTimeout               : StatusCode = 408; // RFC 7231, 6.5.7
        public let Conflict                     : StatusCode = 409; // RFC 7231, 6.5.8
        public let Gone                         : StatusCode = 410; // RFC 7231, 6.5.9
        public let LengthRequired               : StatusCode = 411; // RFC 7231, 6.5.10
        public let PreconditionFailed           : StatusCode = 412; // RFC 7232, 4.2
        public let RequestEntityTooLarge        : StatusCode = 413; // RFC 7231, 6.5.11
        public let RequestURITooLong            : StatusCode = 414; // RFC 7231, 6.5.12
        public let UnsupportedMediaType         : StatusCode = 415; // RFC 7231, 6.5.13
        public let RequestedRangeNotSatisfiable : StatusCode = 416; // RFC 7233, 4.4
        public let ExpectationFailed            : StatusCode = 417; // RFC 7231, 6.5.14
        public let Teapot                       : StatusCode = 418; // RFC 7168, 2.3.3
        public let MisdirectedRequest           : StatusCode = 421; // RFC 7540, 9.1.2
        public let UnprocessableEntity          : StatusCode = 422; // RFC 4918, 11.2
        public let Locked                       : StatusCode = 423; // RFC 4918, 11.3
        public let FailedDependency             : StatusCode = 424; // RFC 4918, 11.4
        public let TooEarly                     : StatusCode = 425; // RFC 8470, 5.2.
        public let UpgradeRequired              : StatusCode = 426; // RFC 7231, 6.5.15
        public let PreconditionRequired         : StatusCode = 428; // RFC 6585, 3
        public let TooManyRequests              : StatusCode = 429; // RFC 6585, 4
        public let RequestHeaderFieldsTooLarge  : StatusCode = 431; // RFC 6585, 5
        public let UnavailableForLegalReasons   : StatusCode = 451; // RFC 7725, 3

        public let InternalServerError           : StatusCode = 500; // RFC 7231, 6.6.1
        public let NotImplemented                : StatusCode = 501; // RFC 7231, 6.6.2
        public let BadGateway                    : StatusCode = 502; // RFC 7231, 6.6.3
        public let ServiceUnavailable            : StatusCode = 503; // RFC 7231, 6.6.4
        public let GatewayTimeout                : StatusCode = 504; // RFC 7231, 6.6.5
        public let HTTPVersionNotSupported       : StatusCode = 505; // RFC 7231, 6.6.6
        public let VariantAlsoNegotiates         : StatusCode = 506; // RFC 2295, 8.1
        public let InsufficientStorage           : StatusCode = 507; // RFC 4918, 11.5
        public let LoopDetected                  : StatusCode = 508; // RFC 5842, 7.2
        public let NotExtended                   : StatusCode = 510; // RFC 2774, 7
        public let NetworkAuthenticationRequired : StatusCode = 511; // RFC 6585, 6
    };
};
