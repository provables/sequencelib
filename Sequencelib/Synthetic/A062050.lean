/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A062050 sequence
-/

namespace Sequence

@[OEIS := A062050, offset := 1, maxIndex := 100, derive := true]
def A062050 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| loop (λ (x y) ↦ (1 + x) % (y - x)) x 0 + 1

end Sequence