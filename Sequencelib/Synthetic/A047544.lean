/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A047544 sequence
-/

namespace Sequence

@[OEIS := A047544, offset := 1, maxIndex := 100, derive := true]
def A047544 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| ((if ((x / 2) % 2) ≤ 0 then 1 else x % 2) + x) + x

end Sequence