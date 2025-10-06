/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A052637 sequence
-/

namespace Sequence

@[OEIS := A052637, offset := 0, maxIndex := 19, derive := true]
def A052637 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x y) ↦ x * y) x (loop (λ (_x _y) ↦ 1) (x - 2) x) * 3

end Sequence