/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A267536 sequence
-/

namespace Sequence

@[OEIS := A267536, offset := 0, maxIndex := 100, derive := true]
def A267536 (x : ℕ) : ℕ :=
  Int.toNat <| loop2 (λ (x y) ↦ ((x * 2) * 2) + y) (λ (x _y) ↦ (2 % x) + 1) x 1 2

end Sequence