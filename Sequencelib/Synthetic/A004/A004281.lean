/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A004281 sequence
-/

namespace Sequence

@[OEIS := A004281, offset := 0, maxIndex := 66, derive := true]
def A004281 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (_x y) ↦ y) ((x - 1) - 2) 1 + x

end Sequence