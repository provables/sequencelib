/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A024215 sequence
-/

namespace Sequence

@[OEIS := A024215, offset := 1, maxIndex := 100, derive := true]
def A024215 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| loop (λ (x y) ↦ loop (λ (x _y) ↦ loop (λ (x _y) ↦ x * x) 1 (1 + ((x + x) + x))) 1 y + x) x 1

end Sequence