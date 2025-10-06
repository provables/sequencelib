/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A337118 sequence
-/

namespace Sequence

@[OEIS := A337118, offset := 1, maxIndex := 5, derive := true]
def A337118 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| loop2 (λ (x y) ↦ (2 - (x % y)) + (x + x)) (λ (x _y) ↦ x) x 1 2

end Sequence