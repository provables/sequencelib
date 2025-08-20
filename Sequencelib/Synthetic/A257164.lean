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
# A257164 sequence 
-/


namespace Sequence

@[OEIS := A257164, offset := 0, derive := true, maxIndex := 67]
def A257164 (x : ℕ) : ℕ :=
  Int.toNat <| ((x + x) % (1 + 4))

end Sequence

