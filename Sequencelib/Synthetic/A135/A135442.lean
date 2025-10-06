/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A135442 sequence
-/

namespace Sequence

@[OEIS := A135442, offset := 1, maxIndex := 2, derive := true]
def A135442 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| loop (λ (x y) ↦ (2 * (x * x)) + y) (2 * x) 2 * 2

end Sequence