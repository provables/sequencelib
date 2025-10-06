/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A194145 sequence
-/

namespace Sequence

@[OEIS := A194145, offset := 1, maxIndex := 68, derive := true]
def A194145 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| (((2 + ((((x / 2) / 2) + x) + x)) / (1 + 4)) + 1) + x

end Sequence