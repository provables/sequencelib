/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A060488 sequence
-/

namespace Sequence

@[OEIS := A060488, offset := 3, maxIndex := 47, derive := true]
def A060488 (n : ℕ) : ℕ :=
  let x := n - 3
  Int.toNat <| (loop (λ (x y) ↦ loop (λ (x y) ↦ x + y) y x) (2 + x) (x * x) + x) + x

end Sequence