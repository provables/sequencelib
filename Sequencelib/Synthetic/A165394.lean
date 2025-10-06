/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A165394 sequence
-/

namespace Sequence

@[OEIS := A165394, offset := 2, maxIndex := 98, derive := true]
def A165394 (n : ℕ) : ℕ :=
  let x := n - 2
  Int.toNat <| (((1 + x) * loop (λ (x y) ↦ loop (λ (x y) ↦ x + y) y x) x x) * 2) + 1

end Sequence