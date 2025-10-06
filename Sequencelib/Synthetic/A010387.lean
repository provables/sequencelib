/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A010387 sequence
-/

namespace Sequence

@[OEIS := A010387, offset := 1, maxIndex := 11, derive := true]
def A010387 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| loop2 (λ (x y) ↦ (y / 2) + x) (λ (_x _y) ↦ 2) x x x

end Sequence