/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A127500 sequence
-/

namespace Sequence

@[OEIS := A127500, offset := 4, maxIndex := 10, derive := true]
def A127500 (n : ℕ) : ℕ :=
  let x := n - 4
  Int.toNat <| (2 + loop2 (λ (x y) ↦ loop (λ (_x y) ↦ y) (x / 2) 2 + y) (λ (x _y) ↦ x) x 1 2) + (2 + x)

end Sequence