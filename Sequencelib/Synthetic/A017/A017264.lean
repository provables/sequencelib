/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A017264 sequence
-/

namespace Sequence

@[OEIS := A017264, offset := 0, maxIndex := 12, derive := true]
def A017264 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x _y) ↦ x * x) 3 (loop (λ (x _y) ↦ 2 + ((x + x) + x)) 2 x)

end Sequence