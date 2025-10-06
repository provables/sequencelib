/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A191797 sequence
-/

namespace Sequence

@[OEIS := A191797, offset := 0, maxIndex := 100, derive := true]
def A191797 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x _y) ↦ (x * x) - x) 1 (loop2 (λ (x y) ↦ x + y) (λ (x _y) ↦ x) x 0 1) / 2

end Sequence