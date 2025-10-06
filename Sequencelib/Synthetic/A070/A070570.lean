/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A070570 sequence
-/

namespace Sequence

@[OEIS := A070570, offset := 0, maxIndex := 84, derive := true]
def A070570 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x _y) ↦ x * x) 2 x % loop (λ (x y) ↦ (x * x) + y) 2 2

end Sequence