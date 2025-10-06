/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A069476 sequence
-/

namespace Sequence

@[OEIS := A069476, offset := 0, maxIndex := 35, derive := true]
def A069476 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x y) ↦ (2 + y) * x) (2 * 2) ((((1 + x) + 1) * 2) + 1)

end Sequence