/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A072249 sequence
-/

namespace Sequence

@[OEIS := A072249, offset := 3, maxIndex := 10, derive := true]
def A072249 (n : ℕ) : ℕ :=
  let x := n - 3
  Int.toNat <| (((2 + (loop (λ (x y) ↦ x + y) x x / 3)) + x) * 2) + 1

end Sequence