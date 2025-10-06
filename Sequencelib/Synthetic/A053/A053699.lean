/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A053699 sequence
-/

namespace Sequence

@[OEIS := A053699, offset := 0, maxIndex := 36, derive := true]
def A053699 (x : ℕ) : ℕ :=
  Int.toNat <| loop2 (λ (x y) ↦ 1 + (x * y)) (λ (_x y) ↦ y) 4 1 x

end Sequence