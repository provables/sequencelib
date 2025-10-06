/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A242890 sequence
-/

namespace Sequence

@[OEIS := A242890, offset := 1, maxIndex := 7, derive := true]
def A242890 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| (((x - 1) / (1 + 4)) + 2) * (2 * 4)

end Sequence