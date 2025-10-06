/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A185016 sequence
-/

namespace Sequence

@[OEIS := A185016, offset := 0, maxIndex := 85, derive := true]
def A185016 (x : ℕ) : ℕ :=
  Int.toNat <| 1 / loop (λ (_x y) ↦ y) (((x - 1) - 2) - 2) 2

end Sequence