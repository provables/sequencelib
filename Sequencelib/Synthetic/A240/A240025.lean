/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A240025 sequence
-/

namespace Sequence

@[OEIS := A240025, offset := 0, maxIndex := 100, derive := true]
def A240025 (x : ℕ) : ℕ :=
  Int.toNat <| if (x % loop (λ (x y) ↦ (y / (1 + x)) + 1) x 1) ≤ 0 then 1 else 0

end Sequence