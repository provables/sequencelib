/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A078221 sequence
-/

namespace Sequence

@[OEIS := A078221, offset := 1, maxIndex := 9, derive := true]
def A078221 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| loop2 (λ (x y) ↦ (x + y) * x) (λ (x _y) ↦ 2 % x) x 1 2

end Sequence