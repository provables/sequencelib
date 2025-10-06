/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A008402 sequence
-/

namespace Sequence

@[OEIS := A008402, offset := 0, maxIndex := 100, derive := true]
def A008402 (x : ℕ) : ℕ :=
  Int.toNat <| (((((loop (λ (x y) ↦ (x + y) * x) 2 x * (1 + x)) + 1) + x) * x) * 3) + 1

end Sequence