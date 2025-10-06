/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A177101 sequence
-/

namespace Sequence

@[OEIS := A177101, offset := 1, maxIndex := 7, derive := true]
def A177101 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| loop (λ (x y) ↦ loop (λ (x _y) ↦ (x * x) % (2 + (2 * 4))) (x % 2) x + y) x 1

end Sequence