/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A022129 sequence
-/

namespace Sequence

@[OEIS := A022129, offset := 0, maxIndex := 29, derive := true]
def A022129 (x : ℕ) : ℕ :=
  Int.toNat <| loop2 (λ (_x y) ↦ loop (λ (x _y) ↦ (x + x) + x) 2 2 + y) (λ (x y) ↦ x + y) x 3 2

end Sequence