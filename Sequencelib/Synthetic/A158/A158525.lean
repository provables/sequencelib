/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A158525 sequence
-/

namespace Sequence

@[OEIS := A158525, offset := 4, maxIndex := 100, derive := true]
def A158525 (n : ℕ) : ℕ :=
  let x := n - 4
  Int.toNat <| (loop2 (λ (x y) ↦ 2 * ((x - y) + x)) (λ (x _y) ↦ x) (2 + x) 2 1 - 1) * 2

end Sequence