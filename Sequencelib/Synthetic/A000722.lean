/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A000722 sequence
-/

namespace Sequence

@[OEIS := A000722, offset := 0, maxIndex := 7, derive := true]
def A000722 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x y) ↦ x * y) (loop (λ (x _y) ↦ x + x) x 1) 1

end Sequence