/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A162670 sequence
-/

namespace Sequence

@[OEIS := A162670, offset := 1, maxIndex := 20, derive := true]
def A162670 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| loop2 (λ (x y) ↦ (loop (λ (x _y) ↦ 1 + ((2 + x) * x)) 2 2 * y) + x) (λ (x _y) ↦ x) x 1 0

end Sequence