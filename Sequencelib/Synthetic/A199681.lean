/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A199681 sequence
-/

namespace Sequence

@[OEIS := A199681, offset := 0, maxIndex := 100, derive := true]
def A199681 (x : ℕ) : ℕ :=
  Int.toNat <| (loop (λ (x _y) ↦ 3 * (1 + x)) (x + x) 4 + 2) * 2

end Sequence