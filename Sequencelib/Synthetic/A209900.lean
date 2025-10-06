/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A209900 sequence
-/

namespace Sequence

@[OEIS := A209900, offset := 1, maxIndex := 68, derive := true]
def A209900 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| (((((((((x / 2) + x) / 4) + x) / 3) + x) / 2) + x) / 2) + 1

end Sequence