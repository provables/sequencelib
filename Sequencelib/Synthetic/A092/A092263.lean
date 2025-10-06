/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A092263 sequence
-/

namespace Sequence

@[OEIS := A092263, offset := 1, maxIndex := 36, derive := true]
def A092263 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| loop2 (λ (x y) ↦ 1 + (((x % 2) + x) + y)) (λ (x _y) ↦ x) x 1 0

end Sequence