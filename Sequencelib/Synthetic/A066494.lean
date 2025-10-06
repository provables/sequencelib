/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A066494 sequence
-/

namespace Sequence

@[OEIS := A066494, offset := 1, maxIndex := 7, derive := true]
def A066494 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| ((((((((((((loop2 (λ (x y) ↦ y - x) (λ (x _y) ↦ x) x 1 0 % (1 + x)) + 1) + x) + x) + x) + 1) * (x + 1)) - 1)) +
        loop (λ (x _y) ↦ (-x)) x 1) -
      x) /
    (1 + x)) -
  1

end Sequence