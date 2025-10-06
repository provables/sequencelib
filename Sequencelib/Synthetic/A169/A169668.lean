/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A169668 sequence
-/

namespace Sequence

@[OEIS := A169668, offset := 2, maxIndex := 8, derive := true]
def A169668 (n : ℕ) : ℕ :=
  let x := n - 2
  Int.toNat <| loop (λ (x y) ↦ loop (λ (x y) ↦ (x * y) + x) (y + y) x) (1 + x) 1

end Sequence