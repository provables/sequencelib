/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A064264 sequence
-/

namespace Sequence

@[OEIS := A064264, offset := 0, maxIndex := 100, derive := true]
def A064264 (x : ℕ) : ℕ :=
  Int.toNat <| ((2 * loop (λ (x _y) ↦ (x + x) + x) 2 x) + x) %
  (((((((((((((((((((((((((loop (λ (x _y) ↦ ((2 * (2 + (x + x))) + x) + 1) 1 0 + 1) + 1) + 1) + 1) + 1) + 1) + 1) + 1) +
                                    1) +
                                  1) +
                                1) +
                              1) +
                            1) +
                          1) +
                        1) +
                      1) +
                    1) +
                  1) +
                1) +
              1) +
            1) +
          1) +
        1) +
      1) +
    1)

end Sequence