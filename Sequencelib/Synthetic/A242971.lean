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

# A242971 sequence 
-/

namespace Sequence

@[OEIS := A242971, offset := 0, derive := true, maxIndex := 52]
def A242971 (n : ℕ) : ℤ :=
  let x := n - 0
  loop (λ(x y : ℤ) ↦ loop (λ(x y : ℤ) ↦ (x + x)) (x) (1)) ((x % 2)) (loop (λ(x y : ℤ) ↦ (y - x)) (x) (1))

end Sequence
