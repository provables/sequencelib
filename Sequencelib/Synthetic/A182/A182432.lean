/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A182432 sequence
-/

namespace Sequence

@[OEIS := A182432, offset := 0, maxIndex := 100, derive := true]
def A182432 (x : ℕ) : ℕ :=
  Int.toNat <| loop2 (λ (x y) ↦ loop (λ (x _y) ↦ (x - 1) + x) 2 (x + x) - y) (λ (x _y) ↦ x) x 1 1

end Sequence