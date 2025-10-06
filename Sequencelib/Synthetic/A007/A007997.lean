/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A007997 sequence
-/

namespace Sequence

@[OEIS := A007997, offset := 3, maxIndex := 100, derive := true]
def A007997 (n : ℕ) : ℕ :=
  let x := n - 3
  Int.toNat <| (-(loop (λ (x y) ↦ x - y) x x / 3))

end Sequence