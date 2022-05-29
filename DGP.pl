%NOUNS%
noun(noun(boy)) --> [boy].
noun(noun(girl)) --> [girl].
noun(noun(man)) --> [man].
noun(noun(box)) --> [box].
noun(noun(room)) --> [room].
noun(noun(bottle)) --> [bottle].
noun(noun(book)) --> [book].
noun(noun(flower)) --> [flower].
noun(noun(table)) --> [table].
noun(noun(school)) --> [school].
noun(noun(woman)) --> [woman].
noun(noun(envelope)) --> [envelope].
noun(noun(shed)) --> [shed].
noun(noun(building)) --> [building].
noun(noun(tree)) --> [tree].
noun(noun(students)) --> [students].
noun(noun(professors)) --> [professors].
noun(noun(lecturers)) --> [lecturers].
noun(noun(scientists)) --> [scientists].
noun(noun(researchers)) --> [researchers].
%ADJ%
adjective(adjective(dangerous)) --> [dangerous].
adjective(adjective(calm)) --> [calm].
adjective(adjective(young)) --> [young].
adjective(adjective(old)) --> [old].
adjective(adjective(big)) --> [big].
adjective(adjective(bright)) --> [bright].
adjective(adjective(brilliant)) --> [brilliant].
adjective(adjective(many)) --> [many].
adjective(adjective(chill)) --> [chill].
adjective(adjective(dumb)) --> [dumb].
adjective(adjective(rich)) --> [rich].
adjective(adjective(poor)) --> [poor].
adjective(adjective(white)) --> [white].
adjective(adjective(superb)) --> [superb].
adjective(adjective(handsome)) --> [handsome].
adjective(adjective(talented)) --> [talented].
adjective(adjective(large)) --> [large].
adjective(adjective(empty)) --> [empty].
adjective(adjective(delicious)) --> [delicious].
adjective(adjective(square)) --> [square].
adjective(adjective(adorable)) --> [adorable].
%ADVERB%
adverb(adverb(hastily)) --> [hastily].
adverb(adverb(quickly)) --> [quickly].
adverb(adverb(occasionally)) --> [ocassionally].
adverb(adverb(slowly)) --> [slowly].
adverb(adverb(knowingly)) --> [knowingly].
adverb(adverb(rapidly)) --> [rapidly].
adverb(adverb(clumsily)) --> [clumsily].
adverb(adverb(diligently)) --> [diligently].
adverb(adverb(extremely)) --> [extremely].
adverb(adverb(sweetely)) --> [sweetely].
adverb(adverb(sadly)) --> [sadly].
%DETERMINER%
determiner(determiner(the)) --> [the].
determiner(determiner(a)) --> [a].
determiner(determiner(every)) --> [every].
determiner(determiner(some)) --> [some].
%VERB%
verb(verb(work)) --> [worked].
verb(verb(shoot)) --> [shoots].
verb(verb(push)) --> [pushed].
verb(verb(store)) --> [stored].
verb(verb(give)) --> [gave].
verb(verb(climb)) --> [climbed].
verb(verb(watch)) --> [watched].
verb(verb(admire)) --> [admired].
verb(verb(appreciate)) --> [appreciated].
verb(verb(run)) --> [ran].
verb(verb(kill)) --> [killed].
verb(verb(dance)) --> [danced].
verb(verb(slide)) --> [slid].
verb(verb(go)) --> [gone].
verb(verb(smile)) --> [smiled].
verb(verb(punch)) --> [punched].
verb(verb(murder)) --> [murdered].
verb(verb(stab)) --> [stabbed].
verb(verb(think)) --> [thought].
verb(verb(do)) --> [do].
verb(verb(did)) --> [did].
%PREPOSITION%
preposition(preposition(in)) --> [in].
preposition(preposition(after)) --> [after].
preposition(preposition(behind)) --> [behind].
preposition(preposition(for)) --> [for].
preposition(preposition(while)) --> [while].
%CONJUNCTIVE%
conj(conj(and)) --> [and].
conj(conj(while)) --> [while].
%PRONOUNS%
pronoun(pronoun(who)) --> [who].
pronoun(pronoun(what)) --> [what].


s(s(X,Y)) --> nounPredicate(X), verbPredicate(Y).
s(W) --> pronoun_phrase(W).
s(s(X,Y,Z)) --> s_conj(X), conj(Y), s(Z).
s(s(X,Y,Z)) --> pronoun(X), conj(Y), s(Z).

s_conj(s_conj(X,Y)) --> nounPredicate(X), verbPredicate(Y).

nounPredicate(nounPredicate(X)) --> noun(X).
nounPredicate(nounPredicate(X,Y)) --> determiner(X), noun(Y).
nounPredicate(nounPredicate(X,Y)) --> noun(X), verbPredicate(Y).
nounPredicate(nounPredicate(X,Y,Z)) --> determiner(X), adjectivePredicate(Y), noun(Z).
nounPredicate(nounPredicate(X,Y)) --> adjectivePredicate(X), nounPredicate(Y).
nounPredicate(nounPredicate(X,Y,Z)) --> nounPredicate2(X), pronoun(Y), verbPredicate(Z).
nounPredicate(nounPredicate(X,Y,Z)) --> nounPredicate2(X), conj(Y), nounPredicate(Z).
nounPredicate2(nounPredicate2(X)) --> noun(X).
nounPredicate2(nounPredicate2(X,Y)) --> determiner(X), noun(Y).
nounPredicate2(nounPredicate2(X,Y,Z)) --> determiner(X), adjectivePredicate(Y), noun(Z).
nounPredicate2(nounPredicate2(X,Y)) --> adjectivePredicate(X), nounPredicate(Y).

verbPredicate(verbPredicate(X)) --> verb(X).
verbPredicate(verbPredicate(X,Y)) --> verb(X), pronounPredicate(Y).
verbPredicate(verbPredicate(X,Y)) --> verb(X), nounPredicate(Y).
verbPredicate(verbPredicate(X,Y,Z)) --> verb(X), nounPredicate(Y), nounPredicate(Z).
verbPredicate(verbPredicate(X,Y,Z)) --> verb(X), nounPredicate(Y), pronounPredicate(Z).
verbPredicate(verbPredicate(W,X,Y,Z)) --> verb(W), nounPredicate(X), nounPredicate(Y), pronounPredicate(Z).
verbPredicate(verbPredicate(X,Y)) --> adverb(X), verbPredicate(Y).
verbPredicate(verbPredicate(X,Y)) --> verb(X), nounPredicate(Y).
verbPredicate(verbPredicate(X,Y,Z)) --> verbPredicate2(X), conj(Y), verbPredicate(Z).

verbPredicate2(verbPredicate2(X)) --> verb(X).
verbPredicate2(verbPredicate2(X,Y)) --> verb(X), pronounPredicate(Y).
verbPredicate2(verbPredicate2(X,Y)) --> verb(X), nounPredicate(Y).
verbPredicate2(verbPredicate2(X,Y,Z)) --> verb(X), nounPredicate(Y), nounPredicate(Z).
verbPredicate2(verbPredicate2(X,Y,Z)) --> verb(X), nounPredicate(Y), pronounPredicate(Z).
verbPredicate2(verbPredicate2(W,X,Y,Z)) --> verb(W), nounPredicate(X), nounPredicate(Y), pronounPredicate(Z).
verbPredicate2(verbPredicate2(X,Y)) --> adverb(X), verbPredicate2(Y).

pronounPredicate(pronounPredicate(X,Y)) --> preposition(X), nounPredicate(Y).
pronounPredicate(pronounPredicate(X,Y,Z)) --> preposition(X), nounPredicate(Y), pronounPredicate(Z).

adjectivePredicate(adjectivePredicate(X)) --> adjective(X).
adjectivePredicate(adjectivePredicate(X,Y)) --> adjective(X), adjectivePredicate(Y).

pronoun_phrase(prop(P,VP)) --> pronoun(P), verbPredicate(VP).