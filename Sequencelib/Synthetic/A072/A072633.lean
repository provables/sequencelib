/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A072633 sequence
-/

namespace Sequence

@[OEIS := A072633, offset := 0, maxIndex := 69, derive := true]
def A072633 (x : ℕ) : ℕ :=
  Int.toNat <| (((((((((loop (λ (x y) ↦ x / (2 + y)) 2 x + x) / 2) + x) / 2) + x) / 2) + 1) / 2) + 1) + x

end Sequence