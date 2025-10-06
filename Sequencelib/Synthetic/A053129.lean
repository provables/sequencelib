/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A053129 sequence
-/

namespace Sequence

@[OEIS := A053129, offset := 7, maxIndex := 100, derive := true]
def A053129 (n : ℕ) : ℕ :=
  let x := n - 7
  Int.toNat <| loop (λ (x y) ↦ (((2 * ((x + x) + x)) + x) / y) + x) (x + (1 + x)) 1

end Sequence