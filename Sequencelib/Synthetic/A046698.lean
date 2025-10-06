/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A046698 sequence
-/

namespace Sequence

@[OEIS := A046698, offset := 0, maxIndex := 100, derive := true]
def A046698 (x : ℕ) : ℕ :=
  Int.toNat <| loop2 (λ (_x y) ↦ y) (λ (_x _y) ↦ 2) (x - 1) x 1

end Sequence