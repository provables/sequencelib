/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A153061 sequence
-/

namespace Sequence

@[OEIS := A153061, offset := 0, maxIndex := 9, derive := true]
def A153061 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x y) ↦ (x * x) + y) x 4

end Sequence