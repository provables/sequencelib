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

# A072507 sequence 
-/

namespace Sequence

@[OEIS := A072507, offset := 1, derive := true, maxIndex := 21]
def A072507 (n : ℕ) : ℤ :=
  let x := n - 1
  loop2 (λ(x y : ℤ) ↦ y) (λ(x y : ℤ) ↦ 0) (x) (1) (2)


end Sequence
