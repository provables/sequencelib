/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A083069 sequence
-/

namespace Sequence

@[OEIS := A083069, offset := 0, maxIndex := 97, derive := true]
def A083069 (x : ℕ) : ℕ :=
  Int.toNat <| loop2 (λ (x y) ↦ ((2 + y) * x) - 1) (λ (_x y) ↦ y) x 1 x

end Sequence