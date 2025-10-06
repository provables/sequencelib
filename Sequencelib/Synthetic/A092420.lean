/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A092420 sequence
-/

namespace Sequence

@[OEIS := A092420, offset := 1, maxIndex := 19, derive := true]
def A092420 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| loop2 (λ (x y) ↦ 1 + (loop (λ (x _y) ↦ (x + x) + x) 2 x - y)) (λ (x _y) ↦ x) x 1 0

end Sequence