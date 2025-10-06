/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A018357 sequence
-/

namespace Sequence

@[OEIS := A018357, offset := 1, maxIndex := 18, derive := true]
def A018357 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| comprN (λ (x : ℤ) ↦ (loop (λ (x y : ℤ) ↦ ((2 + x) * ((x / 2) + x))) (2) (2) % (1 + x))) x + 1

end Sequence