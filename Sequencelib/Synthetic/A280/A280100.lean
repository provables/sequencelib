/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A280100 sequence
-/

namespace Sequence

@[OEIS := A280100, offset := 0, maxIndex := 49, derive := true]
def A280100 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x y) ↦ loop (λ (x _y) ↦ x * x) 2 (y + y) * x) x (1 + x)

end Sequence