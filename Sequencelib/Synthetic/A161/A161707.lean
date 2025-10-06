/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A161707 sequence
-/

namespace Sequence

@[OEIS := A161707, offset := 0, maxIndex := 100, derive := true]
def A161707 (x : ℕ) : ℕ :=
  Int.toNat <| (((loop (λ (x y) ↦ (y * y) + x) ((x - 2) + x) 1 + x) / 2) + 1) + x

end Sequence