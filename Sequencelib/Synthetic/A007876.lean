/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A007876 sequence
-/

namespace Sequence

@[OEIS := A007876, offset := 1, maxIndex := 23, derive := true]
def A007876 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| loop (λ (x y) ↦ (((y / 2) * (x - 2)) + x) + y) x 1

end Sequence