/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A179532 sequence
-/

namespace Sequence

@[OEIS := A179532, offset := 0, maxIndex := 98, derive := true]
def A179532 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x _y) ↦ x + x) ((1 + ((x * x) + x)) / 3) 1

end Sequence