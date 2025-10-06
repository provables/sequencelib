/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A172471 sequence
-/

namespace Sequence

@[OEIS := A172471, offset := 0, maxIndex := 100, derive := true]
def A172471 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x y) ↦ (x + y) / (1 + x)) (x + x) 0

end Sequence