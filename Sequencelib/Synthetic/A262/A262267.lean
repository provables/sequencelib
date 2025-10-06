/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A262267 sequence
-/

namespace Sequence

@[OEIS := A262267, offset := 1, maxIndex := 100, derive := true]
def A262267 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| loop (λ (x y) ↦ (x - ((y / 2) % 2)) + x) x 2

end Sequence