/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A330112 sequence
-/

namespace Sequence

@[OEIS := A330112, offset := 1, maxIndex := 59, derive := true]
def A330112 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| (((2 - ((x - (((x / 2) / 2) / 3)) / 4)) + x) + x) + x

end Sequence