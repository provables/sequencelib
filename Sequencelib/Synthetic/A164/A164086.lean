/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A164086 sequence
-/

namespace Sequence

@[OEIS := A164086, offset := 1, maxIndex := 58, derive := true]
def A164086 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| (((((((((((((((((((((((((((((loop (λ (x _y) ↦ x - (x / 2)) 2 x / 2) + x) + x) + x) / 3) + 1) + x) + 1) / 2) + x) + x) /
                                      2) +
                                    x) +
                                  x) +
                                1) /
                              2) +
                            2) +
                          x) /
                        2) +
                      x) +
                    x) *
                  2) +
                2) /
              2) +
            2) +
          x) /
        2) +
      x) +
    x) +
  2

end Sequence