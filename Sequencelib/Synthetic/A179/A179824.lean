/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A179824 sequence
-/

namespace Sequence

@[OEIS := A179824, offset := 2, maxIndex := 100, derive := true]
def A179824 (n : ℕ) : ℕ :=
  let x := n - 2
  Int.toNat <| loop2 (λ (x y) ↦ (x + y) * x) (λ (x _y) ↦ x) 2 (1 + x) 0

end Sequence