/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A126876 sequence
-/

namespace Sequence

@[OEIS := A126876, offset := 5, maxIndex := 11, derive := true]
def A126876 (n : ℕ) : ℕ :=
  let x := n - 5
  Int.toNat <| loop2 (λ (x y) ↦ 1 + ((x + x) + y)) (λ (x _y) ↦ x) x 1 0

end Sequence