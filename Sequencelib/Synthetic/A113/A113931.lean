/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A113931 sequence
-/

namespace Sequence

@[OEIS := A113931, offset := 1, maxIndex := 3, derive := true]
def A113931 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| ((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((loop
                                                                                                                                                                            (λ
                                                                                                                                                                                (x
                                                                                                                                                                                  _y) ↦
                                                                                                                                                                              2 +
                                                                                                                                                                                loop
                                                                                                                                                                                  (λ
                                                                                                                                                                                      (x
                                                                                                                                                                                        y) ↦
                                                                                                                                                                                    (2 +
                                                                                                                                                                                        (2 +
                                                                                                                                                                                          y)) *
                                                                                                                                                                                      x)
                                                                                                                                                                                  2
                                                                                                                                                                                  x)
                                                                                                                                                                            x
                                                                                                                                                                            1 +
                                                                                                                                                                          2) +
                                                                                                                                                                        1) +
                                                                                                                                                                      2) +
                                                                                                                                                                    2) +
                                                                                                                                                                  2) +
                                                                                                                                                                2) +
                                                                                                                                                              2) +
                                                                                                                                                            2) +
                                                                                                                                                          2) +
                                                                                                                                                        2) +
                                                                                                                                                      2) +
                                                                                                                                                    2) +
                                                                                                                                                  2) +
                                                                                                                                                2) +
                                                                                                                                              2) +
                                                                                                                                            2) +
                                                                                                                                          2) +
                                                                                                                                        2) +
                                                                                                                                      2) +
                                                                                                                                    2) +
                                                                                                                                  2) +
                                                                                                                                2) +
                                                                                                                              2) +
                                                                                                                            2) +
                                                                                                                          2) +
                                                                                                                        2) +
                                                                                                                      2) +
                                                                                                                    2) +
                                                                                                                  2) +
                                                                                                                2) +
                                                                                                              2) +
                                                                                                            2) +
                                                                                                          2) +
                                                                                                        2) +
                                                                                                      2) +
                                                                                                    2) +
                                                                                                  2) +
                                                                                                2) +
                                                                                              2) +
                                                                                            2) +
                                                                                          2) +
                                                                                        2) +
                                                                                      2) +
                                                                                    2) +
                                                                                  2) +
                                                                                2) +
                                                                              2) +
                                                                            2) +
                                                                          2) +
                                                                        2) +
                                                                      2) +
                                                                    2) +
                                                                  2) +
                                                                2) +
                                                              2) +
                                                            2) +
                                                          2) +
                                                        2) +
                                                      2) +
                                                    2) +
                                                  2) +
                                                2) +
                                              2) +
                                            2) +
                                          2) +
                                        2) +
                                      2) +
                                    2) +
                                  2) +
                                2) +
                              2) +
                            2) +
                          2) +
                        2) +
                      2) +
                    2) +
                  2) +
                2) +
              2) +
            2) +
          2) +
        2) +
      2) +
    2) /
  2

end Sequence