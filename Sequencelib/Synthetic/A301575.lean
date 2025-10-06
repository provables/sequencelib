/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A301575 sequence
-/

namespace Sequence

@[OEIS := A301575, offset := 7, maxIndex := 9, derive := true]
def A301575 (n : ℕ) : ℕ :=
  let x := n - 7
  Int.toNat <| (((2 + (2 * (2 + (x % 2)))) + x) * (2 + x)) * 2

end Sequence