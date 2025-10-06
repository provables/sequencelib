/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A054127 sequence
-/

namespace Sequence

@[OEIS := A054127, offset := 1, maxIndex := 29, derive := true]
def A054127 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| loop (λ (x y) ↦ (((1 % y) + x) + x) + y) x 2

end Sequence