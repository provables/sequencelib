/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A329510 sequence
-/

namespace Sequence

@[OEIS := A329510, offset := 0, maxIndex := 84, derive := true]
def A329510 (x : ℕ) : ℕ :=
  Int.toNat <| loop2 (λ (x y) ↦ 1 + (x + y)) (λ (x _y) ↦ 2 - (x / 2)) x 1 1

end Sequence