/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A085036 sequence
-/

namespace Sequence

@[OEIS := A085036, offset := 0, maxIndex := 40, derive := true]
def A085036 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x y) ↦ 2 + (x + y)) (2 + ((2 * (x + x)) + x)) 0 * 2

end Sequence