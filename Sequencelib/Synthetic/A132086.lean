/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A132086 sequence
-/

namespace Sequence

@[OEIS := A132086, offset := 1, maxIndex := 72, derive := true]
def A132086 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| 1 + x

end Sequence