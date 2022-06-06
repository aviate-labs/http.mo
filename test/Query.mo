import Query "../src/Query";

do {
    let (t, fs) = Query.parse("/endpoint?foo=0&bar=baz");
    assert(t == "/endpoint");
    assert(fs == [
        ("foo", "0"),
        ("bar", "baz"),
    ]);
};

do {
    let (t, fs) = Query.parse("/");
    assert(t == "/");
    assert(fs == []);
};
