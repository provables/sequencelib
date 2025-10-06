/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A017717 sequence
-/

namespace Sequence

@[OEIS := A017717, offset := 53, maxIndex := 100, derive := true]
def A017717 (n : ℕ) : ℕ :=
  let x := n - 53
  Int.toNat <| loop (λ (x y) ↦ ((((loop (λ (x _y) ↦ 1 + (x * x)) 2 2 * 2) * x) + x) / y) + x) x 1

end Sequence