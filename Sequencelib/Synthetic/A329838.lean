/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A329838 sequence
-/

namespace Sequence

@[OEIS := A329838, offset := 1, maxIndex := 61, derive := true]
def A329838 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| ((((1 + (((x / 2) / (1 + 4)) + x)) / (1 + 4)) + 2) + x) + x

end Sequence