/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A210527 sequence
-/

namespace Sequence

@[OEIS := A210527, offset := 0, maxIndex := 42, derive := true]
def A210527 (x : ℕ) : ℕ :=
  Int.toNat <| ((((((((((((((((((((((((loop (λ (x y) ↦ x + y) (x + ((3 + x) * 2)) 0 * 2) + 1) + 1) + 2) + 2) + 2) + 2) + 2) + 2) + 2) +
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
          2) *
        2) +
      2) /
    2) +
  2

end Sequence