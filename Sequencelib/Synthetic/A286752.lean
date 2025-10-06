/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A286752 sequence
-/

namespace Sequence

@[OEIS := A286752, offset := 1, maxIndex := 100, derive := true]
def A286752 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| (loop (λ (x y) ↦ ((y * y) / (2 + x)) + y) (1 + (x / 2)) 0 + x) % 2

end Sequence