/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A309874 sequence
-/

namespace Sequence

@[OEIS := A309874, offset := 2, maxIndex := 100, derive := true]
def A309874 (n : ℕ) : ℕ :=
  let x := n - 2
  Int.toNat <| ((loop2 (λ (_x y) ↦ 2 + y) (λ (x y) ↦ x + y) x 0 x - x % 2) * 2) + 2

end Sequence