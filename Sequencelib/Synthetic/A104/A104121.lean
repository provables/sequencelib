/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A104121 sequence
-/

namespace Sequence

@[OEIS := A104121, offset := 0, maxIndex := 95, derive := true]
def A104121 (x : ℕ) : ℕ :=
  Int.toNat <| if (x % (loop (λ (x y) ↦ y - x) x 2 + 2)) ≤ 0 then 0 else 1

end Sequence