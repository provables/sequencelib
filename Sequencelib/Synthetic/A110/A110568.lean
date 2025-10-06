/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A110568 sequence
-/

namespace Sequence

@[OEIS := A110568, offset := 0, maxIndex := 92, derive := true]
def A110568 (x : ℕ) : ℕ :=
  Int.toNat <| (1 - loop (λ (x _y) ↦ 2 - x) x x) % 3

end Sequence