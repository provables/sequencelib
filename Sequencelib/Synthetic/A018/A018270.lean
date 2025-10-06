/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A018270 sequence
-/

namespace Sequence

@[OEIS := A018270, offset := 1, maxIndex := 8, derive := true]
def A018270 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| comprN (λ (x : ℤ) ↦ (loop (λ (x y : ℤ) ↦ (((x + x) * x) - 2)) (2) (2) % (1 + x))) x + 1

end Sequence