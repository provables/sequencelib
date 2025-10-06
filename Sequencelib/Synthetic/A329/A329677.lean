/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A329677 sequence
-/

namespace Sequence

@[OEIS := A329677, offset := 0, maxIndex := 96, derive := true]
def A329677 (x : ℕ) : ℕ :=
  Int.toNat <| loop2 (λ (_x y) ↦ (y / 2) - 2) (λ (x _y) ↦ x) x 1 2 % 2

end Sequence