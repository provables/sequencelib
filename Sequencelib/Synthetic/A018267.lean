/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A018267 sequence
-/

namespace Sequence

@[OEIS := A018267, offset := 1, maxIndex := 6, derive := true]
def A018267 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| comprN (λ (x : ℤ) ↦ (loop (λ (x y : ℤ) ↦ ((x * x) - 1)) (2) ((1 + 2)) % (1 + x))) x + 1

end Sequence