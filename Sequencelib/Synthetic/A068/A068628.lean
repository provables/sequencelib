/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A068628 sequence
-/

namespace Sequence

@[OEIS := A068628, offset := 1, maxIndex := 40, derive := true]
def A068628 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| loop2 (λ (x y) ↦ (x * y) + x) (λ (x _y) ↦ x) 2 (2 * (x + x)) 2

end Sequence