module {
    public type HeaderField = (Text, Text);

    public type Request = {
        url     : Text;
        method  : Text;
        body    : [Nat8];
        headers : [HeaderField];
    };

    public type Response = {
        body        : [Nat8];
        headers     : [HeaderField];
        status_code : Nat16;
    };
};
