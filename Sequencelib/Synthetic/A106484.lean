/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A106484 sequence
-/

namespace Sequence

@[OEIS := A106484, offset := 0, maxIndex := 5, derive := true]
def A106484 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x _y) ↦ (2 * ((x * x) * x)) - x) x 2

end Sequence