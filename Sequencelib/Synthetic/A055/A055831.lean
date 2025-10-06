/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A055831 sequence
-/

namespace Sequence

@[OEIS := A055831, offset := 4, maxIndex := 52, derive := true]
def A055831 (n : ℕ) : ℕ :=
  let x := n - 4
  Int.toNat <| loop (λ (x y) ↦ loop (λ (x y) ↦ 2 + (x + y)) y x + y) (1 + x) 1 + x

end Sequence