/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A044061 sequence
-/

namespace Sequence

@[OEIS := A044061, offset := 1, maxIndex := 47, derive := true]
def A044061 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| (((((((x * x) / (2 + ((2 + 3) * (x * 3)))) + x) * 2) + 2) * 2) * 2) * 2

end Sequence