/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A059029 sequence
-/

namespace Sequence

@[OEIS := A059029, offset := 0, maxIndex := 100, derive := true]
def A059029 (x : ℕ) : ℕ :=
  Int.toNat <| loop2 (λ (_x y) ↦ 2 + y) (λ (x _y) ↦ x) x 0 x

end Sequence