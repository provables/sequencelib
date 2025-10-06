/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A077958 sequence
-/

namespace Sequence

@[OEIS := A077958, offset := 0, maxIndex := 100, derive := true]
def A077958 (x : ℕ) : ℕ :=
  Int.toNat <| if (x % 3) ≤ 0 then loop (λ (x _y) ↦ x + x) (x / 3) 1 else 0

end Sequence