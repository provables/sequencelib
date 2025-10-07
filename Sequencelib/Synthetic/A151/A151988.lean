/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A151988 sequence
-/

namespace Sequence

@[OEIS := A151988, offset := 0, maxIndex := 100, derive := true]
def A151988 (x : ℕ) : ℕ :=
  Int.toNat <| comprN (λ (x) ↦ ((((x / 2) / 2) % 3) * x) % 2) x

end Sequence