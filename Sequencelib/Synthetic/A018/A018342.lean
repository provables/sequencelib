/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A018342 sequence
-/

namespace Sequence

@[OEIS := A018342, offset := 1, maxIndex := 9, derive := true]
def A018342 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| comprN (λ (x) ↦ loop (λ (x _y) ↦ (loop (λ (x _y) ↦ x * x) 2 2 * x) - x) 2 x % (1 + x)) x + 1

end Sequence