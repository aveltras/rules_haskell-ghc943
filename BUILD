load(
    "@rules_haskell//haskell:defs.bzl",
    "haskell_binary",
    "haskell_library",
    "haskell_test",
    "haskell_toolchain_library",
    "haskell_repl",
)

haskell_toolchain_library(name="base")

haskell_library(
    name = "lib",
    srcs = ["src/Lib.hs"],
    deps = [
        ":base"
    ],
    visibility = [
        "//visibility:public",
    ],
)

haskell_binary(
    name = "hello",
    srcs = ["bin/CustomMain.hs"],
    main_function = "main",
    main_file = "bin/CustomMain.hs",
    deps = [
        ":base",
        ":lib",
    ],
    visibility = [
        "//visibility:public",
    ],
)


haskell_repl(
    name = "repl",
    deps = [
        ":lib",
        ":hello"
    ],
)
