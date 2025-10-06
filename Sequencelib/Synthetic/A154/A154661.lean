/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A154661 sequence
-/

namespace Sequence

@[OEIS := A154661, offset := 1, maxIndex := 6, derive := true]
def A154661 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| loop2 (λ (x y) ↦ (loop2 (λ (x y) ↦ y - x) (λ (x _y) ↦ x) y 0 1 + x) + y) (λ (x _y) ↦ x) x 1 2 + 2

end Sequence