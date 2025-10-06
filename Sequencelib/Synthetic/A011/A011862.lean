/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A011862 sequence
-/

namespace Sequence

@[OEIS := A011862, offset := 0, maxIndex := 62, derive := true]
def A011862 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x _y) ↦ x / 3) 2 ((x * x) - x)

end Sequence