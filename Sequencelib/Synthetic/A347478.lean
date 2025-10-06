/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A347478 sequence
-/

namespace Sequence

@[OEIS := A347478, offset := 1, maxIndex := 24, derive := true]
def A347478 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| loop (λ (x _y) ↦ x + x) (2 * (2 + x)) 1 - loop (λ (_x _y) ↦ 0) x 1

end Sequence