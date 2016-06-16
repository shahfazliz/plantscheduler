/**
 * Good and Bad companion information got from http://momwithaprep.com/companion-planting-chart/ 
 * Harvesting period information got from http://www.almanac.com/
 */

/**
  * Facts about plants
  */
plants(asparagus).
plants(bush_bean).
plants(beetroot).
plants(cabbage).
plants(carrot).
plants(celery).
plants(corn).
plants(cucumber).
plants(eggplant).
plants(lettuce).
plants(onion).
plants(parsley).
plants(pea).
plants(potato).
plants(pumpkin).
plants(radish).
plants(bak_choy).
plants(tomato).
plants(watermelon).
plants(honeydew).
plants(garlic).
plants(pepper).
plants(pole_bean).
plants(basil).
plants(parsley).
plants(dill).
plants(fennel).
plants(mint).
plants(rosemary).
plants(sage).
plants(savory).
plants(tansy).
plants(thyme).

mature_in_weeks(asparagus, 48).
mature_in_weeks(bush_bean, 15).
mature_in_weeks(beetroot, 17).
mature_in_weeks(cabbage, 18).
mature_in_weeks(carrot, 10).
mature_in_weeks(celery, 15).
mature_in_weeks(corn, 15).
mature_in_weeks(cucumber, 10).
mature_in_weeks(eggplant, 16).
mature_in_weeks(lettuce, 16).
mature_in_weeks(onion, 12).
mature_in_weeks(parsley, 12).
mature_in_weeks(pea, 7).
mature_in_weeks(potato, 10).
mature_in_weeks(pumpkin, 30).
mature_in_weeks(pumpkin, 15).
mature_in_weeks(bak_choy, 4).
mature_in_weeks(tomato, 12).
mature_in_weeks(watermelon, 23).
mature_in_weeks(honeydew, 23).
mature_in_weeks(garlic, 48).
mature_in_weeks(pepper, 12).
mature_in_weeks(bush_bean, 15).
mature_in_weeks(basil, 6).
mature_in_weeks(parsley, 6).
mature_in_weeks(dill, 6).
mature_in_weeks(fennel, 6).
mature_in_weeks(mint, 6).
mature_in_weeks(rosemary, 6).
mature_in_weeks(sage, 6).
mature_in_weeks(savory, 6).
mature_in_weeks(tansy, 6).
mature_in_weeks(thyme, 6).

harvest_in_weeks(asparagus, 4).

harvest_lasts_in_weeks(bush_bean, 2).
harvest_lasts_in_weeks(beetroot, 0).
harvest_lasts_in_weeks(cabbage, 0).
harvest_lasts_in_weeks(carrot, 0).
harvest_lasts_in_weeks(celery, 4).
harvest_lasts_in_weeks(corn, 18).
harvest_lasts_in_weeks(cucumber, 6).
harvest_lasts_in_weeks(eggplant, 8).
harvest_lasts_in_weeks(lettuce, 4).
harvest_lasts_in_weeks(onion, 0).
harvest_lasts_in_weeks(parsley, 12).
harvest_lasts_in_weeks(pea, 3).
harvest_lasts_in_weeks(potato, 0).
harvest_lasts_in_weeks(pumpkin, 0).
harvest_lasts_in_weeks(pumpkin, 0).
harvest_lasts_in_weeks(bak_choy, 0).
harvest_lasts_in_weeks(tomato, 3).
harvest_lasts_in_weeks(watermelon, 0).
harvest_lasts_in_weeks(honeydew, 0).
harvest_lasts_in_weeks(garlic, 0).
harvest_lasts_in_weeks(pepper, 0).
harvest_lasts_in_weeks(bush_bean, 2).

perennials(asparagus).
perennials(basil).
perennials(dill).
perennials(parsley).
perennials(fennel).
perennials(mint).
perennials(rosemary).
perennials(sage).
perennials(savory).
perennials(tansy).
perennials(thyme).

herbs(basil).
herbs(parsley).
herbs(dill).
herbs(fennel).
herbs(mint).
herbs(rosemary).
herbs(sage).
herbs(savory).
herbs(tansy).
herbs(thyme).

beans(bush_bean).
beans(pole_bean).

melons(watermelon).
melons(honeydew).

/**
  * Good Companions
  */
good_companion(asparagus, parsley).
good_companion(asparagus, tomato).

good_companion(basil, pepper).
good_companion(basil, tomato).

good_companion(bush_bean, beetroot).
good_companion(bush_bean, cabbage).
good_companion(bush_bean, carrot).
good_companion(bush_bean, corn).
good_companion(bush_bean, cucumber).
good_companion(bush_bean, lettuce).
good_companion(bush_bean, pea).
good_companion(bush_bean, potato).
good_companion(bush_bean, radish).
good_companion(bush_bean, rosemary).
good_companion(bush_bean, savory).
good_companion(bush_bean, tansy).

good_companion(beetroot, bush_bean).
good_companion(beetroot, cabbage).
good_companion(beetroot, lettuce).
good_companion(beetroot, onion).
good_companion(beetroot, radish).
good_companion(beetroot, sage).

good_companion(cabbage, bush_bean).
good_companion(cabbage, beetroot).
good_companion(cabbage, carrot).
good_companion(cabbage, celery).
good_companion(cabbage, cucumber).
good_companion(cabbage, lettuce).
good_companion(cabbage, onion).
good_companion(cabbage, bak_choy).
good_companion(cabbage, X) :- herbs(X).
good_companion(cabbage, potato).

good_companion(carrot, beans).
good_companion(carrot, cabbage).
good_companion(carrot, lettuce).
good_companion(carrot, onion).
good_companion(carrot, pea).
good_companion(carrot, radish).
good_companion(carrot, rosemary).
good_companion(carrot, sage).
good_companion(carrot, tomato).

good_companion(celery, X) :- plants(X).

good_companion(corn, beans).
good_companion(corn, beetroot).
good_companion(corn, cabbage).
good_companion(corn, cucumber).
good_companion(corn, X) :- melons(X).
good_companion(corn, parsley).
good_companion(corn, pea).
good_companion(corn, pumpkin).

good_companion(cucumber, bush_bean).
good_companion(cucumber, pole_bean).
good_companion(cucumber, cabbage).
good_companion(cucumber, corn).
good_companion(cucumber, dill).
good_companion(cucumber, eggplant).
good_companion(cucumber, lettuce).
good_companion(cucumber, onion).
good_companion(cucumber, pea).
good_companion(cucumber, radish).
good_companion(cucumber, tomato).
good_companion(cucumber, savory).

good_companion(eggplant, bush_bean).
good_companion(eggplant, pole_bean).
good_companion(eggplant, pea).
good_companion(eggplant, pepper).
good_companion(eggplant, potato).
good_companion(eggplant, bak_choy).

good_companion(lettuce, pole_bean).
good_companion(lettuce, corn).
good_companion(lettuce, dill).
good_companion(lettuce, fennel).
good_companion(lettuce, potato).
good_companion(lettuce, carrot).
good_companion(lettuce, radish).

good_companion(X, corn) :- melons(X).
good_companion(X, radish) :- melons(X).

good_companion(onion, beetroot).
good_companion(onion, cabbage).
good_companion(onion, carrot).
good_companion(onion, celery).
good_companion(onion, cucumber).
good_companion(onion, lettuce).
good_companion(onion, pepper).
good_companion(onion, bak_choy).
good_companion(onion, tomato).
good_companion(onion, savory).

good_companion(parsley, tomato).
good_companion(parsley, asparagus).

good_companion(pea, bush_bean).
good_companion(pea, pole_bean).
good_companion(pea, carrot).
good_companion(pea, celery).
good_companion(pea, corn).
good_companion(pea, cucumber).
good_companion(pea, eggplant).
good_companion(pea, parsley).
good_companion(pea, radish).
good_companion(pea, bak_choy).
good_companion(pea, pepper).

good_companion(potato, carrot).
good_companion(potato, corn).
good_companion(potato, cucumber).
good_companion(potato, eggplant).
good_companion(potato, lettuce).
good_companion(potato, pea).
good_companion(potato, radish).
good_companion(potato, rosemary).
good_companion(potato, savory).
good_companion(potato, tansy).

good_companion(radish, beetroot).
good_companion(radish, bush_bean).
good_companion(radish, pole_bean).
good_companion(radish, carrot).
good_companion(radish, cucumber).
good_companion(radish, lettuce).
good_companion(radish, X) :- melons(X).
good_companion(radish, pea).
good_companion(radish, bak_choy).

good_companion(pumpkin, corn).

good_companion(bak_choy, celery).
good_companion(bak_choy, corn).
good_companion(bak_choy, eggplant).

good_companion(tomato, asparagus).
good_companion(tomato, basil).
good_companion(tomato, beans).
good_companion(tomato, cabbage).
good_companion(tomato, carrot).
good_companion(tomato, celery).
good_companion(tomato, cucumber).
good_companion(tomato, garlic).
good_companion(tomato, lettuce).
good_companion(tomato, mint).
good_companion(tomato, onion).
good_companion(tomato, parsley).
good_companion(tomato, pepper).

/**
  * Bad companions 
  */
bad_companion(bush_bean, basil).
bad_companion(bush_bean, fennel).
bad_companion(bush_bean, onion).

bad_companion(beetroot, mustard).
bad_companion(beetroot, pole_bean).

bad_companion(cabbage, pole_bean).
bad_companion(cabbage, tomato).

bad_companion(carrot, celery).
bad_companion(carrot, dill).

bad_companion(celery, carrot).
bad_companion(celery, parsley).

bad_companion(corn, tomato).

bad_companion(cucumber, potato).

bad_companion(eggplant, fennel).

bad_companion(garlic, beans).
bad_companion(garlic, pea).

bad_companion(lettuce, X) :- not(plants(X)).

bad_companion(mellons, potato).

bad_companion(onion, asparagus).
bad_companion(onion, beans).
bad_companion(onion, pea).
bad_companion(onion, sage).

bad_companion(parsley, X) :- not(plants(X)).

bad_companion(pea, onion).
bad_companion(pea, garlic).

bad_companion(potato, cucumber).
bad_companion(potato, pumpkin).
bad_companion(potato, rutabaga).
bad_companion(potato, fennel).

bad_companion(radish, tomato).

bad_companion(pumpkin, potato).

bad_companion(radish, X) :- not(plants(X)).

bad_companion(tomato, pole_bean).
bad_companion(tomato, corn).
bad_companion(tomato, dill).
bad_companion(tomato, fennel).
bad_companion(tomato, potato).


harvest_at_week(X, START, WEEK) :- plants(X), WEEK is 