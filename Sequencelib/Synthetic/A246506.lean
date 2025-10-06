/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A246506 sequence
-/

namespace Sequence

@[OEIS := A246506, offset := 2, maxIndex := 11, derive := true]
def A246506 (n : ℕ) : ℕ :=
  let x := n - 2
  Int.toNat <| (((((((((((((((((((((1 + (3 * ((2 + x) * x))) * (1 + x)) / 3) + 1) + x) + 1) + x) + 2) + 2) / 2) + 2) + x) / 2) + x) +
                x) +
              1) /
            2) +
          2) +
        x) *
      2) +
    1) /
  (1 + x)

end Sequence