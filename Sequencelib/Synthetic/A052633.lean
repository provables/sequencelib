/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A052633 sequence
-/

namespace Sequence

@[OEIS := A052633, offset := 0, maxIndex := 19, derive := true]
def A052633 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x y) ↦ (x - (y / x)) * y) x x

end Sequence