/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A126874 sequence
-/

namespace Sequence

@[OEIS := A126874, offset := 5, maxIndex := 12, derive := true]
def A126874 (n : ℕ) : ℕ :=
  let x := n - 5
  Int.toNat <| (loop2 (λ (x y) ↦ 2 + (2 + (x + y))) (λ (x _y) ↦ (x + x) + x) x 1 1 / 2) / 2

end Sequence