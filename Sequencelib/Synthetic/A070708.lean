/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A070708 sequence
-/

namespace Sequence

@[OEIS := A070708, offset := 0, maxIndex := 84, derive := true]
def A070708 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x _y) ↦ (loop (λ (x _y) ↦ x * x) 2 x * x) % loop (λ (x y) ↦ (x * x) + y) 2 2) 2 x

end Sequence