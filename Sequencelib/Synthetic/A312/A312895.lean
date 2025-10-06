/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A312895 sequence
-/

namespace Sequence

@[OEIS := A312895, offset := 0, maxIndex := 49, derive := true]
def A312895 (x : ℕ) : ℕ :=
  Int.toNat <| (loop (λ (x y) ↦ (loop (λ (x y) ↦ (x + y) / 2) 2 x / 2) + y) (x + x) 1 + x) + x

end Sequence