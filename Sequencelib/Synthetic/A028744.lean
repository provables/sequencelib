/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A028744 sequence
-/

namespace Sequence

@[OEIS := A028744, offset := 1, maxIndex := 15, derive := true]
def A028744 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| comprN
  (λ (x : ℤ) ↦ (((loop (λ (x y : ℤ) ↦ (x * x)) (2) (x) * x) % (loop (λ (x y : ℤ) ↦ (2 * (x + x))) (2) (2) - 1)) % 2))
  (1 + x)

end Sequence