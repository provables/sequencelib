/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A199203 sequence
-/

namespace Sequence

@[OEIS := A199203, offset := 0, maxIndex := 5, derive := true]
def A199203 (x : ℕ) : ℕ :=
  Int.toNat <| (loop (λ (x y) ↦ ((2 + (x % 2)) * 2) - y) x x + 2) + 2

end Sequence