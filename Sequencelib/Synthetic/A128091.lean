/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A128091 sequence
-/

namespace Sequence

@[OEIS := A128091, offset := 1, maxIndex := 35, derive := true]
def A128091 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| 1 + (loop (λ (x _y) ↦ (x * x) + x) 2 x + x)

end Sequence