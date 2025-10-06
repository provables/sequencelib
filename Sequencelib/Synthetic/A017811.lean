/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A017811 sequence
-/

namespace Sequence

@[OEIS := A017811, offset := 0, maxIndex := 93, derive := true]
def A017811 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x y) ↦ (((loop (λ (x y) ↦ (x + y) * x) 2 2 * 2) * x) / y) - x) x 1

end Sequence