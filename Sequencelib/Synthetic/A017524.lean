/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A017524 sequence
-/

namespace Sequence

@[OEIS := A017524, offset := 0, maxIndex := 18, derive := true]
def A017524 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x _y) ↦ x * x) 2 (loop (λ (x y) ↦ (2 + y) * x) 2 x)

end Sequence