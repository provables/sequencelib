/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A133895 sequence
-/

namespace Sequence

@[OEIS := A133895, offset := 0, maxIndex := 55, derive := true]
def A133895 (x : ℕ) : ℕ :=
  Int.toNat <| comprN (λ (x) ↦ (1 + (x / (1 + 4))) % (1 + 4)) x

end Sequence