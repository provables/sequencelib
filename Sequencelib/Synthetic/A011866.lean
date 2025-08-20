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
# A011866 sequence 
-/


namespace Sequence

@[OEIS := A011866, offset := 0, derive := true, maxIndex := 100]
def A011866 (x : ℕ) : ℕ :=
  Int.toNat <| (((x * x) - x) / (1 + (2 * (2 + 4))))

end Sequence

