/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A186942 sequence
-/

namespace Sequence

@[OEIS := A186942, offset := 0, maxIndex := 25, derive := true]
def A186942 (x : ℕ) : ℕ :=
  Int.toNat <| (loop (λ (x _y) ↦ x + x) (x + x) 2 - 1) - 2 * loop (λ (x _y) ↦ x + x) x x

end Sequence