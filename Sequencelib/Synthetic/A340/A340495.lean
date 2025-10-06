/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A340495 sequence
-/

namespace Sequence

@[OEIS := A340495, offset := 1, maxIndex := 22, derive := true]
def A340495 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| ((loop (λ (_x y) ↦ loop (λ (x y) ↦ (2 * (x + x)) - y) y 1) x 0 - x) - x) + 2

end Sequence