/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A156772 sequence
-/

namespace Sequence

@[OEIS := A156772, offset := 1, maxIndex := 100, derive := true]
def A156772 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| loop (λ (x y) ↦ (loop (λ (x _y) ↦ ((((x + 2) + x) * 2) - 1) + x) 2 x + y) + (x + x)) 2 x - 2

end Sequence