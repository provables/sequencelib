/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A258109 sequence
-/

namespace Sequence

@[OEIS := A258109, offset := 3, maxIndex := 27, derive := true]
def A258109 (n : ℕ) : ℕ :=
  let x := n - 3
  Int.toNat <| loop (λ (x y) ↦ (x + loop2 (λ (x y) ↦ x + y) (λ (x _y) ↦ x) (y + y) 1 1) + x) x 1

end Sequence