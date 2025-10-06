/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A067353 sequence
-/

namespace Sequence

@[OEIS := A067353, offset := 1, maxIndex := 50, derive := true]
def A067353 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| loop (λ (x y) ↦ loop (λ (x y) ↦ x - y) y x + (2 + x) * y) x 1 + 1

end Sequence