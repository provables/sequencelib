/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A204431 sequence
-/

namespace Sequence

@[OEIS := A204431, offset := 1, maxIndex := 99, derive := true]
def A204431 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| (loop (λ (x y) ↦ loop (λ (x y) ↦ x + y) x y / x) x 1 * 2) % 3

end Sequence