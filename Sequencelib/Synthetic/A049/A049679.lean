/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A049679 sequence
-/

namespace Sequence

@[OEIS := A049679, offset := 0, maxIndex := 50, derive := true]
def A049679 (x : ℕ) : ℕ :=
  Int.toNat <| loop2 (λ (x y) ↦ ((2 * ((x + x) + x)) - y) + x) (λ (x _y) ↦ x) ((1 + x) + x) 1 1

end Sequence