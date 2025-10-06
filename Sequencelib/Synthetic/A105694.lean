/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A105694 sequence
-/

namespace Sequence

@[OEIS := A105694, offset := 0, maxIndex := 18, derive := true]
def A105694 (x : ℕ) : ℕ :=
  Int.toNat <| ((loop (λ (x _y) ↦ ((((loop (λ (x _y) ↦ 2 + (2 * (2 + (x - (x % 4))))) 2 x + 2) + x) * 2) - 1) + 2) x 2 / 2) + 2) / 2

end Sequence