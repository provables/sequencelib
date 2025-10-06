/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A139616 sequence
-/

namespace Sequence

@[OEIS := A139616, offset := 0, maxIndex := 40, derive := true]
def A139616 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x y) ↦ (2 * ((2 + (2 + y)) * x)) + y) 2 x + 2

end Sequence