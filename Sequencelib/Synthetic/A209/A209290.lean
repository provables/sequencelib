/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A209290 sequence
-/

namespace Sequence

@[OEIS := A209290, offset := 0, maxIndex := 19, derive := true]
def A209290 (x : ℕ) : ℕ :=
  Int.toNat <| loop2 (λ (x y) ↦ (x * y) - x) (λ (_x y) ↦ y) x x x

end Sequence