/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A242448 sequence
-/

namespace Sequence

@[OEIS := A242448, offset := 1, maxIndex := 26, derive := true]
def A242448 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| loop2 (λ (x y) ↦ 2 + (x + y)) (λ (x _y) ↦ x) x 2 0 - loop (λ (_x _y) ↦ 2) (x - 1) 1

end Sequence