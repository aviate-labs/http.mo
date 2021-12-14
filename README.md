# Http Types

Includes request, response and header types.

```motoko
Debug.print(debug_show(Query.split("/endpoint?foo=0&bar=baz")));
// #ok("/endpoint", [("foo", "0"), ("bar", "baz")])
```
