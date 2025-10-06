/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A017246 sequence
-/

namespace Sequence

@[OEIS := A017246, offset := 0, maxIndex := 29, derive := true]
def A017246 (x : ℕ) : ℕ :=
  Int.toNat <| loop2 (λ (x y) ↦ (1 + x) * (y + x)) (λ (_x _y) ↦ 1) 2 2 ((x + x) + x)

end Sequence