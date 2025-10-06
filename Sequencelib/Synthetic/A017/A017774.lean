/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A017774 sequence
-/

namespace Sequence

@[OEIS := A017774, offset := 0, maxIndex := 57, derive := true]
def A017774 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x y) ↦ ((loop (λ (x y) ↦ (2 + y) * x) 3 x - x) / y) - x) x 1

end Sequence