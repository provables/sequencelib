/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira, Joe Stubbs
-/
import Lean
import Std.Data.HashMap.Basic
import Sequencelib.Meta.Codomain

open Lean

-- Maximum index to try deriving theorems
-- (override with the option `maxIndex := n` in the `@[OEIS]` attribute)
def DeriveMaxIndex := 10

-- Maximum index to search user proven theorems
def SearchMaxIndex := 100

def Suffixes : Std.HashMap Nat String := Std.HashMap.insertMany default #[
    (0, "zero"), (1, "one"), (2, "two"), (3, "three"), (4, "four"),
    (5, "five"), (6, "six"), (7, "seven"), (8, "eight"), (9, "nine"),
    (10, "ten"), (11, "eleven"), (12, "twelve"), (13, "thirteen"), (14, "fourteen"),
    (15, "fifteen"), (16, "sixteen"), (17, "seventeen"), (18, "eighteen"), (19, "nineteen"),
    (20, "twenty"), (21, "twenty_one"), (22, "twenty_two"), (23, "twenty_three"), (24, "twenty_four"),
    (25, "twenty_five"), (26, "twenty_six"), (27, "twenty_seven"), (28, "twenty_eight"), (29, "twenty_nine"),
    (30, "thirty"), (31, "thirty_one"), (32, "thirty_two"), (33, "thirty_three"), (34, "thirty_four"),
    (35, "thirty_five"), (36, "thirty_six"), (37, "thirty_seven"), (38, "thirty_eight"), (39, "thirty_nine"),
    (40, "forty"), (41, "forty_one"), (42, "forty_two"), (43, "forty_three"), (44, "forty_four"),
    (45, "forty_five"), (46, "forty_six"), (47, "forty_seven"), (48, "forty_eight"), (49, "forty_nine"),
    (50, "fifty"), (51, "fifty_one"), (52, "fifty_two"), (53, "fifty_three"), (54, "fifty_four"),
    (55, "fifty_five"), (56, "fifty_six"), (57, "fifty_seven"), (58, "fifty_eight"), (59, "fifty_nine"),
    (60, "sixty"), (61, "sixty_one"), (62, "sixty_two"), (63, "sixty_three"), (64, "sixty_four"),
    (65, "sixty_five"), (66, "sixty_six"), (67, "sixty_seven"), (68, "sixty_eight"), (69, "sixty_nine"),
    (70, "seventy"), (71, "seventy_one"), (72, "seventy_two"), (73, "seventy_three"), (74, "seventy_four"),
    (75, "seventy_five"), (76, "seventy_six"), (77, "seventy_seven"), (78, "seventy_eight"), (79, "seventy_nine"),
    (80, "eighty"), (81, "eighty_one"), (82, "eighty_two"), (83, "eighty_three"), (84, "eighty_four"),
    (85, "eighty_five"), (86, "eighty_six"), (87, "eighty_seven"), (88, "eighty_eight"), (89, "eighty_nine"),
    (90, "ninety"), (91, "ninety_one"), (92, "ninety_two"), (93, "ninety_three"), (94, "ninety_four"),
    (95, "ninety_five"), (96, "ninety_six"), (97, "ninety_seven"), (98, "ninety_eight"), (99, "ninety_nine"),
    (100, "one_hundred")
]

abbrev Tag := String

instance : Inhabited Tag := inferInstanceAs (Inhabited String)

inductive Thm (c : Codomain) : Type where
  | Value (thmName : Name) (seq : Name) (index : Nat) (value : ↑c) : Thm c
  | Equiv (thmName : Name) (seq1 : Name) (seq2 : Name) : Thm c
  deriving Inhabited

instance {c : Codomain} : Repr (Thm c) where
  reprPrec t _ :=
    match t with
    | .Value n s i v => by
      cases c with
      | Nat => exact s!"[Nat] theorem {n} : {s} {i} = {v}".toFormat
      | Int => exact s!"[Int] theorem {n} : {s} {i} = {v}".toFormat
    | .Equiv n s1 s2 => s!"theorem {n} : {s1} = {s2}"

structure Sequence (c : Codomain) where
  tagName : Tag
  definition : Name
  module : Name
  theorems : Array (Thm c)
  offset : Nat
  isComputable : Bool
  deriving Inhabited, Repr

structure OEISTag where
  tagName : Tag
  codomain: Codomain
  -- We allow different codomains for the sequences associated to a tag because the extension
  -- doesn't allow raising or easily returning errors. We validate this during collection
  -- of the data.
  sequences : Array ((c : Codomain) × Sequence c)
  offset : Nat
  deriving Inhabited, Repr

abbrev OEISInfo := Std.HashMap Tag OEISTag

instance : Inhabited OEISInfo := inferInstanceAs (Inhabited <| Std.HashMap _ _)

structure OEISData where
  description : String
  keywords : List String
  deriving Inhabited, Repr

structure OEISFullData where
  info : OEISTag
  repoInfo : OEISData
  deriving Inhabited, Repr

abbrev OEISFullInfo := Std.HashMap Tag OEISFullData
