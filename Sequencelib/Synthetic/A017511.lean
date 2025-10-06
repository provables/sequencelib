/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A017511 sequence
-/

namespace Sequence

@[OEIS := A017511, offset := 0, maxIndex := 100, derive := true]
def A017511 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x _y) ↦ (x * x) * x) 1 (loop (λ (x y) ↦ 2 + ((2 + y) * x)) 2 x - x)

end Sequence