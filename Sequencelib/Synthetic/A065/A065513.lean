/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A065513 sequence
-/

namespace Sequence

@[OEIS := A065513, offset := 3, maxIndex := 100, derive := true]
def A065513 (n : ℕ) : ℕ :=
  let x := n - 3
  Int.toNat <| ((loop2 (λ (x y) ↦ ((2 + y) * x) + x) (λ (_x y) ↦ y) x (1 + x) x - 1) + 1) * (x + 2)

end Sequence