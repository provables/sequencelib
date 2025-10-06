/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A091703 sequence
-/

namespace Sequence

@[OEIS := A091703, offset := 0, maxIndex := 100, derive := true]
def A091703 (x : ℕ) : ℕ :=
  Int.toNat <| if (x % (1 + 4)) ≤ 0 then 0 else x

end Sequence