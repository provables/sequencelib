/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A055819 sequence
-/

namespace Sequence

@[OEIS := A055819, offset := 0, maxIndex := 50, derive := true]
def A055819 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (_x y) ↦ loop2 (λ (_x y) ↦ y) (λ (x y) ↦ x + y) (y + y) 2 0) x 1

end Sequence