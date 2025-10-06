/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A156928 sequence
-/

namespace Sequence

@[OEIS := A156928, offset := 2, maxIndex := 100, derive := true]
def A156928 (n : ℕ) : ℕ :=
  let x := n - 2
  Int.toNat <| loop (λ (x y) ↦ loop (λ (x y) ↦ (y * y) + x) (1 + y) x + x) x 1

end Sequence