/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A220079 sequence
-/

namespace Sequence

@[OEIS := A220079, offset := 0, maxIndex := 5, derive := true]
def A220079 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x _y) ↦ (2 * ((x + x) + x)) + x) (loop (λ (x y) ↦ x * y) x 1) 1

end Sequence