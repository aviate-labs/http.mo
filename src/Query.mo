import Array "mo:base/Array";
import Iter "mo:base/Iter";
import Text "mo:base/Text";

module {
    public type Field = (
        Text, // Field (e.g. name)
        Text, // Value (e.g. quint)
    );

    /// Parses the given URL (and query strings).
    public func parse(url : Text) : (Text, [Field]) {
        let ps : [Text] = Iter.toArray(Text.split(url, #char('?')));
        if (ps.size() != 2) return (url, []);

        let qStr : [Text] = Iter.toArray(Text.split(ps[1], #char('&')));
        let params = Array.init<Field>(qStr.size(), ("", ""));
        for (i in qStr.keys()) {
            let p : [Text] = Iter.toArray(Text.split(qStr[i], #char '='));
            params[i] := switch(ps.size()) {
                case (2) (p[0], p[1]);
                case (_) (qStr[i], "");
            };
        };
        return (ps[0], Array.freeze(params));
    };
}