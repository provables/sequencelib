/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A017104 sequence
-/

namespace Sequence

@[OEIS := A017104, offset := 0, maxIndex := 19, derive := true]
def A017104 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x _y) ↦ x * x) 2 (loop (λ (x _y) ↦ 1 + (x + x)) 2 (x + x))

end Sequence