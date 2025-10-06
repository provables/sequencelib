/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A158575 sequence
-/

namespace Sequence

@[OEIS := A158575, offset := 0, maxIndex := 100, derive := true]
def A158575 (x : ℕ) : ℕ :=
  Int.toNat <| loop2 (λ (x y) ↦ (x * x) * y) (λ (_x _y) ↦ 2) 2 2 x + 1

end Sequence