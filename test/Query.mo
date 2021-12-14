import Query "../src/Query";

switch (Query.split("/endpoint?foo=0&bar=baz")) {
    case (#err(_)) assert(false);
    case (#ok(t, fs)) {
        assert(t == "/endpoint");
        assert(fs == [
            ("foo", "0"),
            ("bar", "baz"),
        ]);
    };
};
