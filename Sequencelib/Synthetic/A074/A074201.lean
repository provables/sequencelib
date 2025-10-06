/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A074201 sequence
-/

namespace Sequence

@[OEIS := A074201, offset := 1, maxIndex := 70, derive := true]
def A074201 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| (((((((((((((((1 - loop (λ (_x y) ↦ y) (x / 2) 2) + x) + x) + x) / 3) + x) / 2) + x) + x) / 2) + x) / 2) + x) + x) /
    2) %
  2

end Sequence