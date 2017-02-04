## Docker image voor FluentD

Het maken/update van de image doe je met:
```console
$ docker build -t fluentd:v0.14.1-4 .
```

Om dit image beschikbaar te hebben in de k8s omgeving(en) moet het nog gepushed worden naar onze repository:
```console
$ docker push alliander/fluentd:v0.14.1-4
```

De folder plugins is leeg, en dient in de image aangemaakt te worden.

*Check het versie nummer voordat je bovenstaande commando's uitvoert! De bedoeling is dat deze repo automatisch gebouwd gaat worden middels Docker Hub of Quay.io. Op dit moment is het nog niet zover en moeten wijzigingen in deze repo's handmatig gepushed worden.*