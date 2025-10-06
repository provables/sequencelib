/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A282563 sequence
-/

namespace Sequence

@[OEIS := A282563, offset := 1, maxIndex := 20, derive := true]
def A282563 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| loop2 (λ (x y) ↦ x + y) (λ (x _y) ↦ 2 * ((x + x) + x)) (x + x) 1 1

end Sequence