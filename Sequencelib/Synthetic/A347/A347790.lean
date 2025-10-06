/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A347790 sequence
-/

namespace Sequence

@[OEIS := A347790, offset := 1, maxIndex := 5, derive := true]
def A347790 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| loop (λ (x y) ↦ 2 + ((x * x) - y)) (x - 1) 1

end Sequence