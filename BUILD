load(
    "@rules_haskell//haskell:defs.bzl",
    "haskell_binary",
    "haskell_library",
    "haskell_test",
    "haskell_toolchain_library",
    "haskell_repl",
)

haskell_toolchain_library(name="base")

haskell_binary(
    name = "hello",
    srcs = ["src/Main.hs"],
    deps = [
        ":base"
    ],
    visibility = [
        "//visibility:public",
    ],
)


haskell_repl(
    name = "repl",
    deps = [
        ":hello"
    ],
)
