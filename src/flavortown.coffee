# Description
#   Spice up conversations with quotes from Guy Fieri.
#
# Commands:
#   hubot flavortown - So much salami, call my mommy
#   take me to flavortown - Peace, Love and taco grease
#
# Author:
#   Matt Piercy <mpiercy@gmail.com>

guysWisdom = [
  "You know what, it might just be a mound of oil-logged Pillsbury crescent dough, but it’s bomb-dot-com tasty, amigo."
  "When the ham fat combines with the Dr. Pepper—that’s dynamite, brother."
  "And then the fish sauce goes into the pot and it comes out as a whole festival of funk."
  "We’re takin’ you on a road rockin’ trip down to Flavortown, where the gravitational force of bacon warps the laws of space and time."
  "I may not agree with your dietary lifestyle, but those vegan peanut butter crabcakes are funkalicious."
  "Hello, fellow youths, would you like a slice of this gangster loaf of meat?"
  "These cheesy pork fat pancakes are a hot frisbee of fun coming straight for your dome, muchacho."
  "That industrial-sized vat of lobster tater-tot bisque is lookin’ like a Hot tub in Flavortown."
  "I’m here in Waxahachie, Texas checking out this funky little joint serving up—that’s right—chicken-fried armadillo nuggets."
  "Seriously, man, I gotta tell you, for real this time, I’m not even messing around—those corned beef taquitos are lights-out delicious."
  "This pickle soup has at least 6,396 square yards of flavor, forcing it out of bounds."
  "That nacho lasagna is bombtastic! Put it on a flip flop, my man!"
  "So you’re throwing those unseasoned ribs into a pot of boiling water and calling it BBQ? Well that’s some real deal pork flavor there, hoss."
  "I’m here at a funky little joint in southwest Little Rock where twin brothers Jerry and Barry Hawkington are making some righteous sloppy joe Pop-Tarts."
  "That’s a genuinely unwieldy portion of totchos; you should really consider serving those on a trashcan lid."
  "You’re gonna stuff all that cheese in that tight little hole? Shut the front door!"
  "Those jalapeno waffle tostadas are bananas, and bananas is good."
  "That puts the shama lama in ding dong"
  "And all that Washashasahshashasha you put in the burrito puree is really gonna bring the funk."
  "That’s winner winner deep-fried Fruity Pebble beignet dinner right there."
  "Gettin freaky with your tzatziki"
  "Slamma jamma I love that lamb-a"
  "So much salami, call my mommy"
  "I have a PhD in Steak Sandwich...pretty heavy diet."
  "Peace, Love, and taco grease"
  "I don’t know if it’s fair to call their Russian dressing Russian dressing — it should be called something sexy, like liquid Moscow."
  "They make a porchetta that you won't forgetta."
  "That deep fryer looks like the community pool in Flavortown."
  "You could put that lobster sauce on a flip flop and it'd taste good."
]

bestowWisdom = (items) ->
  i = Math.floor(Math.random() * guysWisdom.length)
  guysWisdom[i]

module.exports = (robot) ->
  robot.respond /(flavortown|fieri)/i, (res) ->
    res.reply bestowWisdom()

  robot.hear /take me to flavortown/i, (res) ->
    res.send bestowWisdom()
