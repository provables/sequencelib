/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A075550 sequence
-/

namespace Sequence

@[OEIS := A075550, offset := 1, maxIndex := 9, derive := true]
def A075550 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| (((x + (1 + 4)) * (x / 3)) / 3) + 1

end Sequence