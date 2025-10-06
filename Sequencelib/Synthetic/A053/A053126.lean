/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A053126 sequence
-/

namespace Sequence

@[OEIS := A053126, offset := 4, maxIndex := 100, derive := true]
def A053126 (n : ℕ) : ℕ :=
  let x := n - 4
  Int.toNat <| loop (λ (x y) ↦ ((2 * (x + x)) / y) + x) (1 + (x + x)) 1

end Sequence