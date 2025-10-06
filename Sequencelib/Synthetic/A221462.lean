/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A221462 sequence
-/

namespace Sequence

@[OEIS := A221462, offset := 1, maxIndex := 100, derive := true]
def A221462 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| loop2 (λ (x y) ↦ (1 + (2 + 4)) * (x + y)) (λ (x _y) ↦ x) x 0 1

end Sequence