/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A125622 sequence
-/

namespace Sequence

@[OEIS := A125622, offset := 4, maxIndex := 8, derive := true]
def A125622 (n : ℕ) : ℕ :=
  let x := n - 4
  Int.toNat <| (((2 + x) * (2 + x)) / 2) + x

end Sequence