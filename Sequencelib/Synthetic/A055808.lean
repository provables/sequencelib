/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A055808 sequence
-/

namespace Sequence

@[OEIS := A055808, offset := 0, maxIndex := 46, derive := true]
def A055808 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (_x y) ↦ y * y) ((x - 2) + x) x

end Sequence