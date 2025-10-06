/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A266956 sequence
-/

namespace Sequence

@[OEIS := A266956, offset := 1, maxIndex := 50, derive := true]
def A266956 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| loop (λ (x y) ↦ loop (λ (x _y) ↦ (2 - (x % 2)) * x) 3 y + x) x 1

end Sequence