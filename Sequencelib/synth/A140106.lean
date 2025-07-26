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

# A140106 sequence 
-/

namespace Sequence

@[OEIS := A140106, offset := 1]
def A140106 (n : ℕ) : ℤ :=
  let x := n - 1
  (comprN (λ(x : ℤ) ↦ 0) ((x - 1)) / 2)


end Sequence
