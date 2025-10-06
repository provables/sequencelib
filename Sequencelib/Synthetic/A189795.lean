/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A189795 sequence
-/

namespace Sequence

@[OEIS := A189795, offset := 1, maxIndex := 83, derive := true]
def A189795 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| (((((((((((((2 + (x + x)) / (1 + 4)) + 1) + x) / 2) + 1) + x) / 2) / 2) + 1) + x) + x) + x) + 2

end Sequence