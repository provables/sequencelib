/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A247842 sequence
-/

namespace Sequence

@[OEIS := A247842, offset := 1, maxIndex := 50, derive := true]
def A247842 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| loop (λ (x y) ↦ loop (λ (x _y) ↦ (x + x) + x) (2 + (y * 2)) 1 + x) x 0

end Sequence