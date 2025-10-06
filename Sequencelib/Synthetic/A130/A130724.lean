/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A130724 sequence
-/

namespace Sequence

@[OEIS := A130724, offset := 0, maxIndex := 62, derive := true]
def A130724 (x : ℕ) : ℕ :=
  Int.toNat <| ((2 * if (x % 3) ≤ 0 then 1 else loop (λ (x _y) ↦ x + x) 2 x) + x) / 3

end Sequence