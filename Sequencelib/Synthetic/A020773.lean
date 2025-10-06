/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A020773 sequence
-/

namespace Sequence

@[OEIS := A020773, offset := 0, maxIndex := 98, derive := true]
def A020773 (x : ℕ) : ℕ :=
  Int.toNat <| loop2 (λ (_x y) ↦ y) (λ (_x _y) ↦ 0) x 2 (1 + 4)

end Sequence