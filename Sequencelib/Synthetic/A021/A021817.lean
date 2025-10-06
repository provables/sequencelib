/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A021817 sequence
-/

namespace Sequence

@[OEIS := A021817, offset := 0, maxIndex := 99, derive := true]
def A021817 (x : ℕ) : ℕ :=
  Int.toNat <| comprN (λ (x : ℤ) ↦ 0) ((x % (1 + 4)) - 1)

end Sequence