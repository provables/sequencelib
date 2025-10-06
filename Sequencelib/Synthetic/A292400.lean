/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A292400 sequence
-/

namespace Sequence

@[OEIS := A292400, offset := 0, maxIndex := 28, derive := true]
def A292400 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x y) ↦ loop2 (λ (x y) ↦ (x + x) + y) (λ (x _y) ↦ x) y 1 y - x) (1 + x) 1

end Sequence