/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A221907 sequence
-/

namespace Sequence

@[OEIS := A221907, offset := 0, maxIndex := 100, derive := true]
def A221907 (x : ℕ) : ℕ :=
  Int.toNat <| ((2 * (x + x)) + x) + loop (λ (x _y) ↦ (2 * (x + x)) + x) x 1

end Sequence