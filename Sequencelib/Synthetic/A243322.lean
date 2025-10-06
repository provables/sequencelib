/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A243322 sequence
-/

namespace Sequence

@[OEIS := A243322, offset := 1, maxIndex := 10, derive := true]
def A243322 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| loop (λ (_x y) ↦ loop (λ (x _y) ↦ (x / 3) - x) 2 y) x 1

end Sequence