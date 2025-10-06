/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A245477 sequence
-/

namespace Sequence

@[OEIS := A245477, offset := 0, maxIndex := 86, derive := true]
def A245477 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (_x y) ↦ y) (x % (2 + (x % 2))) 1

end Sequence