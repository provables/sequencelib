/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A104150 sequence
-/

namespace Sequence

@[OEIS := A104150, offset := 0, maxIndex := 100, derive := true]
def A104150 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x y) ↦ x * y) x 1 / if x ≤ 0 then 2 else x

end Sequence