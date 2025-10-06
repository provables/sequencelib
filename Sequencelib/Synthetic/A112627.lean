/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A112627 sequence
-/

namespace Sequence

@[OEIS := A112627, offset := 1, maxIndex := 100, derive := true]
def A112627 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| loop2 (λ (_x y) ↦ loop (λ (x _y) ↦ 1 + (x + x)) 2 y) (λ (x _y) ↦ 2 * (x + x)) x 1 0

end Sequence