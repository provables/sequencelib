/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A115420 sequence
-/

namespace Sequence

@[OEIS := A115420, offset := 1, maxIndex := 64, derive := true]
def A115420 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| comprN (λ (x : ℤ) ↦ (1 - ((x / loop (λ (x y : ℤ) ↦ (x * x)) (2) (2)) % 2))) x

end Sequence