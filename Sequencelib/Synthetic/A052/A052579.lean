/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A052579 sequence
-/

namespace Sequence

@[OEIS := A052579, offset := 0, maxIndex := 20, derive := true]
def A052579 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x y) ↦ x * y) x (loop (λ (_x _y) ↦ 1) (x % 3) 2)

end Sequence