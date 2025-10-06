/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A180118 sequence
-/

namespace Sequence

@[OEIS := A180118, offset := 0, maxIndex := 43, derive := true]
def A180118 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x y) ↦ ((1 + y) * (2 + y)) + x) x 0

end Sequence