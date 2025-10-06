/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A212325 sequence
-/

namespace Sequence

@[OEIS := A212325, offset := 0, maxIndex := 100, derive := true]
def A212325 (x : ℕ) : ℤ :=
  ((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((2 * loop (λ (x y) ↦ x + y) x x) -
                                                                                                                                                                        1) -
                                                                                                                                                                      2) -
                                                                                                                                                                    2) -
                                                                                                                                                                  2) -
                                                                                                                                                                2) -
                                                                                                                                                              2) -
                                                                                                                                                            2) -
                                                                                                                                                          2) -
                                                                                                                                                        2) -
                                                                                                                                                      2) -
                                                                                                                                                    2) -
                                                                                                                                                  2) -
                                                                                                                                                2) -
                                                                                                                                              2) -
                                                                                                                                            2) -
                                                                                                                                          2) -
                                                                                                                                        2) -
                                                                                                                                      2) -
                                                                                                                                    2) -
                                                                                                                                  2) -
                                                                                                                                2) -
                                                                                                                              2) -
                                                                                                                            2) -
                                                                                                                          2) -
                                                                                                                        2) -
                                                                                                                      2) -
                                                                                                                    2) -
                                                                                                                  2) -
                                                                                                                2) -
                                                                                                              2) -
                                                                                                            2) -
                                                                                                          2) -
                                                                                                        2) -
                                                                                                      2) -
                                                                                                    2) -
                                                                                                  2) -
                                                                                                2) -
                                                                                              2) -
                                                                                            2) -
                                                                                          2) -
                                                                                        2) -
                                                                                      2) -
                                                                                    2) -
                                                                                  2) -
                                                                                2) -
                                                                              2) -
                                                                            2) -
                                                                          2) -
                                                                        2) -
                                                                      2) -
                                                                    2) -
                                                                  2) -
                                                                2) -
                                                              2) -
                                                            2) -
                                                          2) -
                                                        2) -
                                                      2) -
                                                    2) -
                                                  2) -
                                                2) -
                                              2) -
                                            2) -
                                          2) -
                                        2) -
                                      2) -
                                    2) -
                                  2) -
                                2) -
                              2) -
                            2) -
                          2) -
                        2) -
                      2) -
                    2) -
                  2) -
                2) -
              2) -
            2) -
          2) -
        2) -
      2) -
    2) -
  2

end Sequence