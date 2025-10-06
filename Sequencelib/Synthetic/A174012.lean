/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A174012 sequence
-/

namespace Sequence

@[OEIS := A174012, offset := 0, maxIndex := 64, derive := true]
def A174012 (x : ℕ) : ℕ :=
  Int.toNat <| (loop (λ (x y) ↦ loop (λ (x y) ↦ y - x) x y) x 0 + x) * 3

end Sequence