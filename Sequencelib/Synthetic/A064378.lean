/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A064378 sequence
-/

namespace Sequence

@[OEIS := A064378, offset := 0, maxIndex := 19, derive := true]
def A064378 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x y) ↦ 2 * (x * y)) x 2 / if x ≤ 0 then 1 else x

end Sequence