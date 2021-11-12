module {
    public type HeaderField = (Text, Text);

    public type HttpRequest = {
        url     : Text;
        method  : Text;
        body    : [Nat8];
        headers : [HeaderField];
    };

    public type HttpResponse = {
        body        : [Nat8];
        headers     : [HeaderField];
        status_code : Nat16;
    };
};
