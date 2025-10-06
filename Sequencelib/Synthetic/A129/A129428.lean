/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A129428 sequence
-/

namespace Sequence

@[OEIS := A129428, offset := 0, maxIndex := 100, derive := true]
def A129428 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x y) ↦ ((loop (λ (x y) ↦ (x + y) * x) 2 2 - 1) * y) + x) x 1

end Sequence