/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A017403 sequence
-/

namespace Sequence

@[OEIS := A017403, offset := 0, maxIndex := 23, derive := true]
def A017403 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x _y) ↦ (x * x) * x) 1 (1 + (loop (λ (x y) ↦ (2 + y) * x) 2 x - x))

end Sequence