/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A118760 sequence 
-/


namespace Sequence

@[OEIS := A118760, offset := 0, derive := true, maxIndex := 73]
def A118760 (x : ℕ) : ℕ :=
  Int.toNat <| x

end Sequence

