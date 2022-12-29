# Bazel repl loading twice on GHC 9.4.3

Uncomment the requested GHC version in the WORKSPACE file.

## ghc 9.2.5

```sh
bazel run :repl
/nix/store/gnzd023sm36agv5gwpa1hpgiamqs4vi0-ghc-9.2.5
/nix/store/gnzd023sm36agv5gwpa1hpgiamqs4vi0-ghc-9.2.5
INFO: Analyzed target //:repl (5 packages loaded, 359 targets configured).
INFO: Found 1 target...
Target //:repl up-to-date:
  bazel-bin/repl@repl
INFO: Elapsed time: 1.879s, Critical Path: 0.00s
INFO: 2 processes: 2 internal.
INFO: Build completed successfully, 2 total actions
INFO: Build completed successfully, 2 total actions
GHCi, version 9.2.5: https://www.haskell.org/ghc/  :? for help
[1 of 1] Compiling Main             ( src/Main.hs, interpreted )
Ok, one module loaded.
Ok, one module loaded.
Loaded GHCi configuration from /home/romain/.cache/bazel/_bazel_romain/7f1c3515702f55a996bf91bbe9169b3c/execroot/rules_haskell_ghc943/bazel-out/k8-fastbuild/bin/ghci-repl-script-repl
ghci> 
Leaving GHCi.
```

## ghc 9.4.3

```sh
bazel run :repl
/nix/store/i76z4dil3d3hmysizrq6l8387a8c8kig-ghc-9.4.3
/nix/store/i76z4dil3d3hmysizrq6l8387a8c8kig-ghc-9.4.3
INFO: Analyzed target //:repl (5 packages loaded, 369 targets configured).
INFO: Found 1 target...
Target //:repl up-to-date:
  bazel-bin/repl@repl
INFO: Elapsed time: 1.883s, Critical Path: 0.00s
INFO: 2 processes: 2 internal.
INFO: Build completed successfully, 2 total actions
INFO: Build completed successfully, 2 total actions
GHCi, version 9.4.3: https://www.haskell.org/ghc/  :? for help
[1 of 2] Compiling Main             ( src/Main.hs, interpreted )
Ok, one module loaded.
[1 of 2] Compiling Main             ( src/Main.hs, interpreted )
Ok, one module loaded.
Loaded GHCi configuration from /home/romain/.cache/bazel/_bazel_romain/7f1c3515702f55a996bf91bbe9169b3c/execroot/rules_haskell_ghc943/bazel-out/k8-fastbuild/bin/ghci-repl-script-repl
ghci> 
Leaving GHCi.
```
