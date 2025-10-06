/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A266221 sequence
-/

namespace Sequence

@[OEIS := A266221, offset := 0, maxIndex := 100, derive := true]
def A266221 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x y) ↦ x + y) ((x % 2) + x) (if x ≤ 0 then 1 else 0)

end Sequence