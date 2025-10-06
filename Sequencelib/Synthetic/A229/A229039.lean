/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A229039 sequence
-/

namespace Sequence

@[OEIS := A229039, offset := 0, maxIndex := 21, derive := true]
def A229039 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x y) ↦ x * y) x (1 + (2 + (if x ≤ 0 then x else 2 + x))) / 2

end Sequence