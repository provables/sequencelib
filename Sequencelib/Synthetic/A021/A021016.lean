/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A021016 sequence
-/

namespace Sequence

@[OEIS := A021016, offset := 0, maxIndex := 98, derive := true]
def A021016 (x : ℕ) : ℕ :=
  Int.toNat <| loop2 (λ (_x y) ↦ (2 + y) * y) (λ (_x _y) ↦ 1) x 0 2

end Sequence