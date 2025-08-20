/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta
import GenSeq

open Synth

/-!
# A134451 sequence 
-/


namespace Sequence

@[OEIS := A134451, offset := 0, derive := true, maxIndex := 100]
def A134451 (x : ℕ) : ℕ :=
  Int.toNat <| (2 - if x ≤ 0 then 2 else x % 2)

end Sequence

