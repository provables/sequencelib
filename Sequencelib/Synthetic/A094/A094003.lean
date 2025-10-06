/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A094003 sequence
-/

namespace Sequence

@[OEIS := A094003, offset := 1, maxIndex := 6, derive := true]
def A094003 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| loop (λ (x y) ↦ loop2 (λ (x y) ↦ 1 + (x * y)) (λ (_x y) ↦ y) y 1 x) x 2

end Sequence