/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A052571 sequence
-/

namespace Sequence

@[OEIS := A052571, offset := 0, maxIndex := 100, derive := true]
def A052571 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x y) ↦ x * y) x (comprN (λ (_x) ↦ 0) (x - 2))

end Sequence