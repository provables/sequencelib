/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A092936 sequence
-/

namespace Sequence

@[OEIS := A092936, offset := 1, maxIndex := 100, derive := true]
def A092936 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| loop (λ (x _y) ↦ x * x) 1 (loop2 (λ (x y) ↦ ((x + x) + x) + y) (λ (x _y) ↦ x) x 1 0)

end Sequence