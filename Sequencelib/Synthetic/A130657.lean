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
# A130657 sequence 
-/


namespace Sequence

@[OEIS := A130657, offset := 0, derive := true, maxIndex := 28]
def A130657 (x : ℕ) : ℕ :=
  Int.toNat <| (1 - ((x % (1 + (2 + 4))) / 4))

end Sequence

