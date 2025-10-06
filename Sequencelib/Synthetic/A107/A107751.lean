/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A107751 sequence
-/

namespace Sequence

@[OEIS := A107751, offset := 0, maxIndex := 100, derive := true]
def A107751 (x : ℕ) : ℕ :=
  Int.toNat <| if (loop (λ (_x y) ↦ y) (x - 2) 1 % 3) ≤ 0 then 2 else 1

end Sequence