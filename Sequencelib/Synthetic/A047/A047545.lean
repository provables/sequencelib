/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A047545 sequence
-/

namespace Sequence

@[OEIS := A047545, offset := 1, maxIndex := 66, derive := true]
def A047545 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| comprN (λ (x) ↦ loop (λ (x y) ↦ ((x / 2) * x) + y) 2 x % 2) x

end Sequence