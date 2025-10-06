/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A053127 sequence
-/

namespace Sequence

@[OEIS := A053127, offset := 5, maxIndex := 100, derive := true]
def A053127 (n : ℕ) : ℕ :=
  let x := n - 5
  Int.toNat <| loop (λ (x y) ↦ (((2 * (x + x)) + x) / y) + x) ((x + x) + 1) 1

end Sequence