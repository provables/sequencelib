/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A018280 sequence
-/

namespace Sequence

@[OEIS := A018280, offset := 1, maxIndex := 12, derive := true]
def A018280 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| comprN (λ (x : ℤ) ↦ ((2 * loop (λ (x y : ℤ) ↦ ((x + y) * x)) (2) (2)) % (1 + x))) x + 1

end Sequence