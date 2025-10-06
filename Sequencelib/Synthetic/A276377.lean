/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A276377 sequence
-/

namespace Sequence

@[OEIS := A276377, offset := 0, maxIndex := 6, derive := true]
def A276377 (x : ℕ) : ℕ :=
  Int.toNat <| loop2 (λ (x y) ↦ (x * x) * y) (λ (x _y) ↦ x * x) 4 x x

end Sequence