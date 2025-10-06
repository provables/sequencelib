/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A008972 sequence
-/

namespace Sequence

@[OEIS := A008972, offset := 1, maxIndex := 18, derive := true]
def A008972 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| loop (λ (x _y) ↦ loop2 (λ (x y) ↦ (x * y) * y) (λ (_x y) ↦ y) (x * x) 1 x) 1 (1 + x)

end Sequence