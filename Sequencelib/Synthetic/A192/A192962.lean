/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A192962 sequence
-/

namespace Sequence

@[OEIS := A192962, offset := 1, maxIndex := 50, derive := true]
def A192962 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| loop (λ (x y) ↦ loop2 (λ (x y) ↦ 2 + (x + y)) (λ (x _y) ↦ x) (y - 1) 1 2 + x) x 1

end Sequence