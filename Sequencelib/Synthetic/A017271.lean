/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A017271 sequence
-/

namespace Sequence

@[OEIS := A017271, offset := 0, maxIndex := 23, derive := true]
def A017271 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x _y) ↦ (x * x) * x) 1 (2 * ((2 * (x + x)) + x))

end Sequence