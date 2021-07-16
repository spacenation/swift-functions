import Foundation

/// Flip Function

public func flip<A, B, C>(_ f: @escaping (A) -> (B) -> C) -> (B) -> (A) -> C {
    { a in { b in f(b)(a) } }
}

public func flip<A, B, C, D>(_ f: @escaping (A) -> (B) -> (C) -> D) -> (C) -> (B) -> (A) -> D {
    { a in { b in { c in f(c)(b)(a) } } }
}

/// Flip Tuple

public func flip<A, B, C>(_ f: @escaping (A, B) -> C) -> (B, A) -> C {
    { f($1, $0) }
}

public func flip<A, B, C, D>(_ f: @escaping (A, B, C) -> D) -> (C, B, A) -> D {
    { f($2, $1, $0) }
}
