JAVA=java

FRAMENETDIR=/mateplus/models/framenet/
GLOVEDIR=/mateplus/models/glove/

$JAVA -Xmx8g -cp lib/*:mateplus.jar se.lth.cs.srl.CompletePipeline eng -lemma models/lemma-eng.model -parser models/parse-eng.model -tagger models/tagger-eng.model -srl models/srl-TACL15-eng.model -glove $GLOVEDIR -reranker -globalFeats -semafor "127.0.0.1 8043" -mst "127.0.0.1 12345" -framenet $FRAMENETDIR -test $1
