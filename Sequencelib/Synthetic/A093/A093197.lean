/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A093197 sequence
-/

namespace Sequence

@[OEIS := A093197, offset := 2, maxIndex := 100, derive := true]
def A093197 (n : ℕ) : ℕ :=
  let x := n - 2
  Int.toNat <| loop2 (λ (x y) ↦ (3 + (2 + y)) * x) (λ (_x y) ↦ 1 + y) x 1 x

end Sequence