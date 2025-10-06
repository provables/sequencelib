/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A296660 sequence
-/

namespace Sequence

@[OEIS := A296660, offset := 0, maxIndex := 17, derive := true]
def A296660 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x y) ↦ loop (λ (x _y) ↦ (-(x + x))) y 1 + ((x + x) * y) * 2) x 1

end Sequence