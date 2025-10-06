/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A064350 sequence
-/

namespace Sequence

@[OEIS := A064350, offset := 0, maxIndex := 69, derive := true]
def A064350 (x : ℕ) : ℕ :=
  Int.toNat <| loop2 (λ (x y) ↦ (x * y) + x) (λ (_x y) ↦ 1 + y) (x + x) 1 x

end Sequence