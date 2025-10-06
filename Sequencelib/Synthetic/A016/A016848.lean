/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A016848 sequence
-/

namespace Sequence

@[OEIS := A016848, offset := 0, maxIndex := 100, derive := true]
def A016848 (x : ℕ) : ℕ :=
  Int.toNat <| loop2 (λ (x y) ↦ (x * x) * y) (λ (x _y) ↦ x) 3 (loop (λ (x _y) ↦ 1 + (x + x)) 2 x) 1

end Sequence