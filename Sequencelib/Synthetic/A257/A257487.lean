/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A257487 sequence
-/

namespace Sequence

@[OEIS := A257487, offset := 0, maxIndex := 24, derive := true]
def A257487 (x : ℕ) : ℕ :=
  Int.toNat <| (loop2 (λ (x y) ↦ (2 * (x + x)) - y) (λ (x _y) ↦ x - 3) x 1 2 + 1) + 2

end Sequence