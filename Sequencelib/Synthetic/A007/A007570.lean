/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A007570 sequence
-/

namespace Sequence

@[OEIS := A007570, offset := 0, maxIndex := 9, derive := true]
def A007570 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x _y) ↦ loop2 (λ (x y) ↦ x + y) (λ (x _y) ↦ x) x 0 1) 2 x

end Sequence