/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A129109 sequence
-/

namespace Sequence

@[OEIS := A129109, offset := 0, maxIndex := 100, derive := true]
def A129109 (x : ℕ) : ℕ :=
  Int.toNat <| 1 + (3 * loop (λ (x y) ↦ 1 + (x + y)) (x + x) 2)

end Sequence