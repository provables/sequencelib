/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A079685 sequence
-/

namespace Sequence

@[OEIS := A079685, offset := 1, maxIndex := 9, derive := true]
def A079685 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| loop (λ (x y) ↦ (x - y) / y) (x / 2) 1 + x

end Sequence