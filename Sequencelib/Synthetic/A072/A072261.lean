/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A072261 sequence
-/

namespace Sequence

@[OEIS := A072261, offset := 1, maxIndex := 100, derive := true]
def A072261 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| loop (λ (x y) ↦ ((2 + (2 % y)) * x) + 1) (2 + x) 1

end Sequence