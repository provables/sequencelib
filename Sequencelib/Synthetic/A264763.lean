/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A264763 sequence
-/

namespace Sequence

@[OEIS := A264763, offset := 0, maxIndex := 56, derive := true]
def A264763 (x : ℕ) : ℕ :=
  Int.toNat <| loop2 (λ (x y) ↦ (y % (1 + 4)) + x) (λ (x _y) ↦ x) x 1 0

end Sequence