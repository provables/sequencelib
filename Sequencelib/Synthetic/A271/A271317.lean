/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A271317 sequence
-/

namespace Sequence

@[OEIS := A271317, offset := 1, maxIndex := 12, derive := true]
def A271317 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| comprN (λ (x) ↦ ((((((((((loop (λ (x y) ↦ x + y) x x * x) - x) / 3) + x) + x) + 1) / 2) + x) + x) + 1) % 2) x

end Sequence