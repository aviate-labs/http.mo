import Array "mo:base/Array";
import Iter "mo:base/Iter";
import Result "mo:base/Result";
import Text "mo:base/Text";

module {
    public type Field = (
        Text, // Field (e.g. name)
        Text, // Value (e.g. quint)
    );

    public func split(str: Text): Result.Result<(Text, [Field]), Text> {
        let ps : [Text] = Iter.toArray(Text.split(str, #char '?'));
        if (ps.size() != 2) {
            return #err("Invalid path: " # str);
        };
        let qStr : [Text] = Iter.toArray(Text.split(ps[1], #char '&'));
        let params = Array.init<Field>(qStr.size(), ("", ""));
        for (i in qStr.keys()) {
            let p : [Text] = Iter.toArray(Text.split(qStr[i], #char '='));
            if (ps.size() != 2) {
                return #err("Invalid query string parameter: " # qStr[i]);
            };
            params[i] := (p[0], p[1]);
        };
        return #ok((ps[0], Array.freeze(params)));
    };
}