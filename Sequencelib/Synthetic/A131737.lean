/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A131737 sequence
-/

namespace Sequence

@[OEIS := A131737, offset := 0, maxIndex := 68, derive := true]
def A131737 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (_x y) ↦ y) (x - 1) x - x / 3

end Sequence