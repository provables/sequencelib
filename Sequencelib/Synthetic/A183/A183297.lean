/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A183297 sequence
-/

namespace Sequence

@[OEIS := A183297, offset := 1, maxIndex := 80, derive := true]
def A183297 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| loop (λ (x y) ↦ ((3 * (x + x)) + y) / (x + ((x * 2) * 2))) (x + x) 1 + x

end Sequence