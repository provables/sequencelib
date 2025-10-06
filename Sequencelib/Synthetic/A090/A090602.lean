/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A090602 sequence
-/

namespace Sequence

@[OEIS := A090602, offset := 0, maxIndex := 19, derive := true]
def A090602 (x : ℕ) : ℕ :=
  Int.toNat <| loop2 (λ (x y) ↦ x * y) (λ (_x y) ↦ y) (1 + ((x - 2) * x)) 1 x * x

end Sequence