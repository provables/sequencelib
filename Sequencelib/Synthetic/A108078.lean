/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A108078 sequence
-/

namespace Sequence

@[OEIS := A108078, offset := 0, maxIndex := 31, derive := true]
def A108078 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x y) ↦ loop (λ (x y) ↦ (x * y) * y) y x) x (1 + x)

end Sequence