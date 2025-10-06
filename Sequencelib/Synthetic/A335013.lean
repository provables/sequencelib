/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A335013 sequence
-/

namespace Sequence

@[OEIS := A335013, offset := 1, maxIndex := 5, derive := true]
def A335013 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| comprN (λ (x : ℤ) ↦ (1 - ((((x / 2) / 2) / 2) % 2))) ((x + x) + x / 3)

end Sequence