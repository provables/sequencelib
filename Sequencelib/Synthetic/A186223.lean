/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A186223 sequence
-/

namespace Sequence

@[OEIS := A186223, offset := 1, maxIndex := 100, derive := true]
def A186223 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| (((((((((((((loop (λ (x _y) ↦ (((((loop2 (λ (_x y) ↦ 1 + y) (λ (x y) ↦ y - x) x 2 1 + 2) / 2) + 2) + x) / 2) - x) 2 x +
                            2) +
                          x) /
                        2) +
                      x) +
                    x) +
                  2) /
                2) +
              2) +
            x) /
          2) +
        x) +
      x) +
    2) /
  2

end Sequence