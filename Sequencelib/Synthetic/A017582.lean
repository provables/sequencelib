/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A017582 sequence
-/

namespace Sequence

@[OEIS := A017582, offset := 0, maxIndex := 28, derive := true]
def A017582 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x _y) ↦ x * x) 1 (loop (λ (x y) ↦ 1 + ((2 + y) * x)) 2 x)

end Sequence