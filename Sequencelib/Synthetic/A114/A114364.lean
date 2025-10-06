/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A114364 sequence
-/

namespace Sequence

@[OEIS := A114364, offset := 1, maxIndex := 100, derive := true]
def A114364 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| (1 + x) * ((2 + x) * (2 + x))

end Sequence