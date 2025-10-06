/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A108732 sequence
-/

namespace Sequence

@[OEIS := A108732, offset := 0, maxIndex := 100, derive := true]
def A108732 (x : ℕ) : ℕ :=
  Int.toNat <| loop2 (λ (_x y) ↦ y) (λ (x _y) ↦ x + x) x 2 1 * loop (λ (x _y) ↦ 1 + (x + x)) 2 2

end Sequence