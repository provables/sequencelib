/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A140282 sequence
-/

namespace Sequence

@[OEIS := A140282, offset := 0, maxIndex := 61, derive := true]
def A140282 (x : ℕ) : ℕ :=
  Int.toNat <| (((x % 3) + x) + x) + x

end Sequence