/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A138395 sequence
-/

namespace Sequence

@[OEIS := A138395, offset := 1, maxIndex := 100, derive := true]
def A138395 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| loop2 (λ (x y) ↦ 3 * ((x - y) + x)) (λ (x _y) ↦ x) x 1 0

end Sequence