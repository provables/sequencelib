/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A023554 sequence
-/

namespace Sequence

@[OEIS := A023554, offset := 1, maxIndex := 50, derive := true]
def A023554 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| ((loop (λ (x y) ↦ loop2 (λ (x y) ↦ 1 + (x + y)) (λ (x _y) ↦ x) (2 + y) 0 2 + x) x 1 + 2) + 2) - (2 + x)

end Sequence